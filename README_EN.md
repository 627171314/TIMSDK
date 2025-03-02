English | [简体中文](./README.md)

Notice: If you open a pull request in TUIKit Android or iOS and the corresponding changes are successfully merged, your name will be included in README.md with a hyperlink to your homepage on GitHub.

## Image Download

Tencent Cloud branch download address: [Download](https://im.sdk.qcloud.com/download/github/TIMSDK.zip)

## SDK Download

<table>
<tr>
<th width="94px" style="text-align:center" >Native SDK</td>
 <th width="0px" style="text-align:center" >Download Address</td>
<th width="0px"  style="text-align:center">Integration Guide</td>
<th width="175px" style="text-align:center">Update Log</td>
</tr>
<tr>
<td style="text-align:center">Android  </td>
<td style="text-align:center" ><a href="https://github.com/tencentyun/TIMSDK/tree/master/Android/IMSDK">GitHub (Recommended)</a></td>
<td style="text-align:left" ><a href="https://intl.cloud.tencent.com/document/product/1047/34286">[Quick Integration] SDK Integration (Android)</a><br><a href="https://intl.cloud.tencent.com/document/product/1047/34306">[General Integration] SDK Integration (Android)</a></td>
<td style="text-align:center" rowspan='4'><a href="https://intl.cloud.tencent.com/document/product/1047/34282">Update Log (Native)</a> </td>
</tr>
<tr>
<td style="text-align:center">iOS  </td>
<td style="text-align:center" ><a href="https://github.com/tencentyun/TIMSDK/tree/master/iOS/IMSDK">GitHub (Recommended)</a></td>
<td style="text-align:left" ><a href="https://intl.cloud.tencent.com/document/product/1047/34287">[Quick Integration] SDK Integration (iOS)</a><br><a href="https://intl.cloud.tencent.com/document/product/1047/34307">[General Integration] SDK Integration (iOS)</a></td>
</tr>
<tr>
<td style="text-align:center">Mac  </td>
<td style="text-align:center" ><a href="https://github.com/tencentyun/TIMSDK/tree/master/Mac/IMSDK">GitHub (Recommended)</a></td>
<td style="text-align:left" ><a href="https://intl.cloud.tencent.com/document/product/1047/34308">[General Integration] SDK Integration (Mac)</a></td>
</tr>
<tr>
<td style="text-align:center">Windows  </td>
<td style="text-align:center" ><a href="https://github.com/tencentyun/TIMSDK/tree/master/Windows/IMSDK">GitHub (Recommended)</a></td>
<td style="text-align:left" ><a href="https://intl.cloud.tencent.com/document/product/1047/34310">[General Integration] SDK Integration (Windows)</a></td>
</tr>
</table>

## TUIKit Integration

<table >
  <tr>
    <th width="180px" style="text-align:center">Module</th>
    <th width="180px" style="text-align:center">Platform</th>
    <th width="500px" style="text-align:center">Document Link</th>
  </tr>

  <tr >
​    <td rowspan='2' style="text-align:center">Quick Integration</td>
​    <td style="text-align:center">iOS</td>
​    <td style="text-align:center"><a href="https://intl.cloud.tencent.com/document/product/1047/34287">TUIKit-iOS Quick Integration</a></td>
  </tr>

  <tr>
​    <td style="text-align:center">Android</td>
​    <td style="text-align:center"><a href="https://intl.cloud.tencent.com/document/product/1047/34286">TUIKit-Android Quick Integration</a></td>
  </tr>

  <tr>
​    <td rowspan='2' style="text-align:center">Setting UI Styles</td>
​    <td style="text-align:center">iOS</td>
​    <td style="text-align:center"><a href="https://intl.cloud.tencent.com/document/product/1047/34290">Setting UI Styles (TUIKit-iOS)</a></td>

  </tr>

  <tr>
​    <td style="text-align:center">Android</td>
​    <td style="text-align:center"><a href="https://intl.cloud.tencent.com/document/product/1047/34289">Setting UI Styles (TUIKit-Android)</a></td>
  </tr>

  <tr>
​    <td rowspan='2' style="text-align:center">Adding Custom Messages</td>
​    <td style="text-align:center">iOS</td>
​    <td style="text-align:center"><a href="https://intl.cloud.tencent.com/document/product/1047/34293">Adding Custom Messages (TUIKit-iOS)</a></td>
  </tr>

  <tr>
​    <td style="text-align:center">Android</td>
​    <td style="text-align:center"><a href="https://intl.cloud.tencent.com/document/product/1047/34292">Adding Custom Messages (TUIKit-Android)</a></td>
  </tr>

</table>

## Differences Between the Basic Edition and the Enhanced Edition
- SDK added the Enhanced Edition from SDK 5.4. The original edition is called the Basic Edition.
- Both the Basic Edition and Enhanced Edition support [V2 APIs](https://intl.cloud.tencent.com/document/product/1047/36169). However, the Enhanced Edition no longer supports legacy APIs while the Basic Edition still supports legacy APIs.
- If you have not integrated legacy APIs, we recommend that you directly use [V2 APIs](https://intl.cloud.tencent.com/document/product/1047/36169) and choose the Enhanced Edition SDK.
- If you have integrated legacy APIs, we recommend that you upgrade to [V2 APIs](https://intl.cloud.tencent.com/document/product/1047/36169) and gradually transition to the Enhanced Edition SDK.
- Compared with the Basic Edition, the Enhanced Edition has greatly reduced the SDK size and installation package increment.
- Compared with the Basic Edition, the Enhanced Edition provides more new features.
- Subsequent development of new features will only be supported on the Enhanced Edition. The Basic Edition supports only routine maintenance and fixing of existing problems.

### Comparison of the SDK sizes
<table>
  <tr>
    <th width="200px" style="text-align:center">Platform</th>
    <th width="260px" style="text-align:center">Item</th>
    <th width="200px" style="text-align:center">Basic Edition</th>
    <th width="200px" style="text-align:center">Enhanced Edition</th>
  </tr>
  <tr>
    <td style="text-align:center">Android</td>
    <td style="text-align:center">aar size</td>
    <td style="text-align:center">7.8 MB</td>
    <td style="text-align:center">3.1 MB</td>
  </tr>
  <tr>
    <td style="text-align:center">iOS</td>
    <td style="text-align:center">framework size</td>
    <td style="text-align:center">57.7 MB</td>
    <td style="text-align:center">11.2 MB</td>
  </tr>
</table>

### Comparison of the app size increments
<table>
  <tr>
    <th width="200px" style="text-align:center">Platform</th>
    <th width="260px" style="text-align:center">Architecture</th>
    <th width="200px" style="text-align:center">Basic Edition</th>
    <th width="200px" style="text-align:center">Enhanced Edition</th>
  </tr>
  <tr>
    <td rowspan='2' style="text-align:center">apk increment</td>
    <td style="text-align:center">armeabi-v7a</td>
    <td style="text-align:center">3.2 MB</td>
    <td style="text-align:center">1.1 MB</td>
  </tr>
  <tr>
    <td style="text-align:center">arm64-v8a</td>
    <td style="text-align:center">5.2 MB</td>
    <td style="text-align:center">1.7 MB</td>
  </tr>
  <tr>
    <td style="text-align:center">ipa increment</td>
    <td style="text-align:center">arm64</td>
    <td style="text-align:center">2.1 MB</td>
    <td style="text-align:center">1.1 MB</td>
  </tr>
</table>

## Guidelines for Upgrading IMSDK to V2 APIs

[API Upgrade Guidelines](https://docs.qq.com/sheet/DS3lMdHpoRmpWSEFW)

## Latest Enhanced Version 6.2.2363 @2022.04.29

### SDK

- Added the community topic feature.
- Added the message edit API.
- Added support for one-to-one message read receipts.
- Optimized the network quality of the International Site.
- Fixed the issue where a read message was displayed as unread after the app was uninstalled and reinstalled.
- Fixed the issue where when the profile of a non-friend user was obtained, the values of custom fields cannot be updated after they were changed to null.
- Fixed the issue where the `lastMsg` of a one-to-one conversation was inconsistent with the `lastMsg` in the message history when both sides sent a message simultaneously.
- Fixed the issue where after the group owner of a public group approved a group joining request, the callback received by the applicant was incorrect.
- Fixed the issue where the `nameCard` of a message sent by a user was null when the user checked this message.
- Fixed the issue in some cases where the conversation list was not sorted after messages were sent.

### TUIKit and demo

- Added the offline push component and simplified the integration process.
- Supported read receipts for group messages.
- Supported the dark theme for iOS.
- Fixed the issue for Android where the app crashed when an excessively large image was sent and previewed.
- Fixed the issue for Android where after a video message was sent, the duration displayed in the message was inconsistent with the actual duration of the video.
- Fixed the issue for Android where a user cannot continue to handle friend requests after the user handled a friend request.

## Latest Basic Version 5.1.66 @2021.09.22

### Android

- Removed the feature of getting Wi-Fi information.

## Feedback
- If you encounter any issue when using TIMSDK, please provide feedback on the problem to us so that we can quickly and effectively locate and solve the issue for you.
- [TIMSDK Issue Feedback Guidelines](https://github.com/tencentyun/TIMSDK/wiki/TIMSDK-issue%E6%9C%89%E6%95%88%E5%8F%8D%E9%A6%88%E6%A8%A1%E6%9D%BF)
