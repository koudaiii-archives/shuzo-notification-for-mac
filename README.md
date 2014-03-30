shuzo-notification-for-mac
==========================

! 用途：
すべてのマカーに修造からのMessageを通知センターからもらう

! 使い方:

git clone https://github.com/koud/shuzo-notification-for-mac.git

通知センターで表示するようにMacのSystem側のRubyに以下のGemをインストール
* sudo su - #Change user to Mac system user
* root# gem install bundle
* root# bundle install
*  Installing docopt 0.5.0
*  Installing plist 3.1.0
*  Installing launch-agent 0.8.1
*  Installing terminal-notifier 1.6.0
*  Using bundler 1.6.0

* 元のユーザに戻り以下インストール
* 第一引数は修造の通知間隔
* 第二引数は機能のOnOff
* ruby install.rb 60 [load|unload]

* 修造デスクトップ for mac
