アプリケーション名:   Proto-Up

アプリケーション概要: ユーザー登録ができ画像を投稿できる

URL:

テスト用アカウント:

利用方法: ユーザー新規登録を行ってもらい、右上に投稿ボタンが出るのでクリックすることで投稿することができる

目指した課題解決: 画像を投稿し、保存でき、他のユーザーと共感することができる

洗い出した要件:　　
 機能
 ユーザー機能   | ユーザー管理    　　| ユーザー管理することができる
 投稿機能       | 画像を投稿      　　| 画像とタイトル、テキストを書くことで投稿できる
 コメント機能   | コメントを残せる   | 画像の詳細画面に行くとコメント欄がありコメントを残すことができる
 いいね機能     | いいねを押せる   　| 非同期通信でいいねを押すとすぐに反映される

実装した機能についてのGIFと説明: 　[投稿機能](https://gyazo.com/730518e36e9146e17e35fa6c9d664a93 "投稿機能")
                              image, title, textをそれぞれ入力すると投稿することができる
実装予定の機能:   いいね機能

データベース設計: [データベース](https://gyazo.com/a5acdf1d5aa319d768676de8c4b7f7e0 "データベース")

ローカルでの動作方法: 

## users テーブル

| Column             | Type       | Options     |
| ----------         | ------     | ----------- |
| nickname           | string     | null: false |
| email              | string     | null: false |
| encrypted_password | string     | null: false |

### Association
- has_many   :posts
- has_many   :comments

## posts テーブル

| Column   | Type       | Options      |
| ---------| --------   | ------------ |
| title    | string     | null: false  |
| text     | text       | null: false  |
| user     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many   :comments

## comments テーブル

| Column   | Type       | Options      |
| ---------| --------   | ------------ |
| text     | text       | null: false  |
| user     | references | null: false, foreign_key: true |
| post     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post