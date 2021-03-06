<!--pages/mine/mine.qml-->
<view class="user-container" style="min-height: 100vh; padding-top: {{navBarHeight}}px;">
  <view class="user-information relative">
    <view qq:if="{{user.avatarUrl}}" class="user-information_img" style="background-image: url('{{user.avatarUrl}}')"></view>
    <image qq:else class="user-information_img" src="../../images/avatar.png"></image>
    <view class="nickname">
      <view class="user-information_nickname">{{user.nickName?user.nickName:'游客'}}</view>
      <view class="user-information_introduction">{{user?'丸子小程序就是好看!':'点击这里授权登录'}}</view>
    </view>
    <button class="userLogin" bindgetuserinfo="getProfile" openType="getUserInfo"></button>
  </view>
  <view class="user-items">
    <view class="user-item relative">
      <text class="user-item_text">我的点赞</text>
      <view class="user-item_icon">
        <image class="user-item_icon_img" src="https://cloud-minapp-16269.cloud.ifanrusercontent.com/my-inform.svg"></image>
        <view class="user-item_icon_sup" qq:if="{{unreadMessageCount>0}}">{{unreadMessageCount}}</view>
      </view>
      <button qq:if="{{!user}}" class="userLogin" bindgetuserinfo="getProfile" openType="getUserInfo"></button>
      <button qq:else class="userLogin" data-url="/pages/posts/posts?id=1" bindtap="bindHandler"></button>
    </view>
    <view class="user-item relative">
      <text class="user-item_text">我的收藏</text>
      <view class="user-item_icon">
        <image class="user-item_icon_img" src="https://cloud-minapp-16269.cloud.ifanrusercontent.com/my-like.svg"></image>
      </view>
      <button qq:if="{{!user}}" class="userLogin" bindgetuserinfo="getProfile" openType="getUserInfo"></button>
      <button qq:else class="userLogin" data-url="/pages/posts/posts?id=2" bindtap="bindHandler"></button>
    </view>
    <view class="user-item relative">
      <text class="user-item_text">我的评论</text>
      <view class="user-item_icon">
        <image class="user-item_icon_img" src="https://cloud-minapp-16269.cloud.ifanrusercontent.com/my-dynamic.svg"></image>
      </view>
      <button qq:if="{{!user}}" class="userLogin" bindgetuserinfo="getProfile" openType="getUserInfo"></button>
      <button qq:else class="userLogin" data-url="/pages/posts/posts?id=3" bindtap="bindHandler"></button>
    </view>
    <view class="user-item">
      <text class="user-item_text">清除缓存</text>
      <view class="user-item_icon">
        <image class="user-item_icon_img" src="https://cloud-minapp-16269.cloud.ifanrusercontent.com/small-logo-gray-with-radius.svg"></image>
      </view>
      <button class="auth-btn" bindtap="loginOut"></button>
    </view>
  </view>
</view>
