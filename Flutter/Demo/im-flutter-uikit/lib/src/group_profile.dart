import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:tim_ui_kit/tim_ui_kit.dart';
import 'package:tim_ui_kit/ui/controller/tim_uikit_chat_controller.dart';
import 'package:tim_ui_kit/ui/utils/color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:timuikit/src/pages/home_page.dart';
import 'package:timuikit/i18n/i18n_utils.dart';
import 'package:timuikit/src/chat.dart';
import 'package:timuikit/src/provider/theme.dart';
import 'package:timuikit/src/search.dart';

class GroupProfilePage extends StatelessWidget {
  final String groupID;
  final sdkInstance = TIMUIKitCore.getSDKInstance();
  final coreInstance = TIMUIKitCore.getInstance();
  GroupProfilePage({Key? key, required this.groupID}) : super(key: key);
  final TIMUIKitChatController _timuiKitChatController =
      TIMUIKitChatController();

  final _operationList = [
    {"label": imt("清空聊天记录"), "id": "clearHistory"},
    {"label": imt("转让群主"), "id": "transimitOwner"},
    {"label": imt("删除并退出"), "id": "quitGroup"},
    {"label": imt("解散该群"), "id": "dismissGroup"}
  ];

  _clearHistory(BuildContext context, theme) async {
    showCupertinoModalPopup<String>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            child: Text(imt("取消")),
            isDefaultAction: false,
          ),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () async {
                Navigator.pop(
                  context,
                );
                final res = await sdkInstance
                    .getMessageManager()
                    .clearGroupHistoryMessage(groupID: groupID);
                Fluttertoast.showToast(
                  msg: res.desc,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                );
                if (res.code == 0) {
                  _timuiKitChatController.clearHistory();
                }
              },
              child: Text(
                imt("清空聊天记录"),
                style: TextStyle(color: theme.cautionColor),
              ),
              isDefaultAction: false,
            )
          ],
        );
      },
    );
  }

  _quitGroup(BuildContext context, theme) async {
    showCupertinoModalPopup<String>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text(imt("退出后不会接收到此群聊消息")),
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            child: Text(imt("取消")),
            isDefaultAction: false,
          ),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () async {
                Navigator.pop(
                  context,
                );
                final res = await sdkInstance.quitGroup(groupID: groupID);
                if (res.code == 0) {
                  final deleteConvRes = await sdkInstance
                      .getConversationManager()
                      .deleteConversation(conversationID: "group_$groupID");
                  Fluttertoast.showToast(
                    msg: deleteConvRes.desc,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                  );
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage(
                                pageIndex: 1,
                              )),
                      (route) => false);
                } else {
                  Fluttertoast.showToast(
                    msg: res.desc,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                  );
                }
              },
              child: Text(
                imt("确定"),
                style: TextStyle(color: theme.cautionColor),
              ),
              isDefaultAction: false,
            )
          ],
        );
      },
    );
  }

  _dismissGroup(BuildContext context, theme) async {
    showCupertinoModalPopup<String>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text(imt("解散后不会接收到此群聊消息")),
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            child: Text(imt("取消")),
            isDefaultAction: false,
          ),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () async {
                Navigator.pop(
                  context,
                );
                final res = await sdkInstance.dismissGroup(groupID: groupID);
                if (res.code == 0) {
                  final deleteConvRes = await sdkInstance
                      .getConversationManager()
                      .deleteConversation(conversationID: "group_$groupID");
                  Fluttertoast.showToast(
                    msg: deleteConvRes.desc,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                  );
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage(
                                pageIndex: 1,
                              )),
                      (route) => false);
                } else {
                  Fluttertoast.showToast(
                    msg: res.desc,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                  );
                }
              },
              child: Text(
                imt("确定"),
                style: TextStyle(color: theme.cautionColor),
              ),
              isDefaultAction: false,
            )
          ],
        );
      },
    );
  }

  _transimitOwner(BuildContext context, String groupID) async {
    List<V2TimGroupMemberFullInfo>? selectedMember = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SelectTransimitOwner(
          groupID: groupID,
        ),
      ),
    );
    if (selectedMember != null) {
      final userID = selectedMember.first.userID;
      final res = await sdkInstance
          .getGroupManager()
          .transferGroupOwner(groupID: groupID, userID: userID);
      Fluttertoast.showToast(
        msg: res.desc,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        backgroundColor: Colors.black,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<DefaultThemeData>(context).theme;
    return Scaffold(
        appBar: AppBar(
            title: Text(
              imt("群聊"),
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            shadowColor: Colors.white,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  theme.lightPrimaryColor ?? CommonColor.lightPrimaryColor,
                  theme.primaryColor ?? CommonColor.primaryColor
                ]),
              ),
            ),
            iconTheme: const IconThemeData(
              color: Colors.white,
            )),
        body: SafeArea(
          child: TIMUIKitGroupProfile(
            groupID: groupID,
            operationListBuilder: (context, groupInfo, memberList) {
              return Column(
                children: [
                  TIMUIKitGroupProfile.memberTile(),
                  TIMUIKitGroupProfile.searchMessage(
                      (V2TimConversation? conversation) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  Search(
                                  onTapConversation: (V2TimConversation conversation, V2TimMessage? targetMsg){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Chat(
                                            selectedConversation: conversation,
                                            initFindingMsg: targetMsg,
                                          ),
                                        ));
                                  },
                                  conversation: conversation,
                                )));
                  }),
                  TIMUIKitGroupProfile.operationDivider(),
                  TIMUIKitGroupProfile.groupNotification(),
                  TIMUIKitGroupProfile.groupManage(),
                  TIMUIKitGroupProfile.groupAddOpt(),
                  TIMUIKitGroupProfile.groupType(),
                  TIMUIKitGroupProfile.operationDivider(),
                  TIMUIKitGroupProfile.messageDisturb(),
                  TIMUIKitGroupProfile.pinedConversation(),
                  TIMUIKitGroupProfile.operationDivider(),
                  TIMUIKitGroupProfile.nameCard(),
                ],
              );
            },
            bottomOperationBuilder: (context, groupInfo, memberList) {
              final groupType = groupInfo.groupType;
              final isOwner =
                  groupInfo.owner == coreInstance.loginUserInfo?.userID;
              return Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  children: _operationList
                      .where((element) {
                        if (!isOwner) {
                          return ["quitGroup", "clearHistory"]
                              .contains(element["id"]);
                        } else {
                          if (groupType == "Work") {
                            return [
                              "clearHistory",
                              "quitGroup",
                              "transimitOwner"
                            ].contains(element["id"]);
                          }
                          if (groupType != "Work") {
                            return [
                              "clearHistory",
                              "dismissGroup",
                              "transimitOwner"
                            ].contains(element["id"]);
                          }
                          return true;
                        }
                      })
                      .map((e) => InkWell(
                            onTap: () {
                              if (e["id"]! == "clearHistory") {
                                _clearHistory(context, theme);
                              } else if (e["id"] == "quitGroup") {
                                _quitGroup(context, theme);
                              } else if (e["id"] == "dismissGroup") {
                                _dismissGroup(context, theme);
                              } else if (e["id"] == "transimitOwner") {
                                _transimitOwner(context, groupID);
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                      bottom: BorderSide(
                                          color: theme.weakDividerColor ??
                                              CommonColor.weakDividerColor))),
                              child: Text(
                                e["label"]!,
                                style: TextStyle(
                                    color: theme.cautionColor, fontSize: 17),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              );
            },
          ),
        ));
  }
}
