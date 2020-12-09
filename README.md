<h1>アプリケーション名:   Proto-Up</h1><br>

 -------------------------------------
<h1>機能</h1>
<dl>
 <dt>・ユーザー登録機能</dt>
 
 ><dd>nackname,email,passwordを入力する事で登録する事ができる</dd>
 
 <dt>・画像投稿機能</dt>
 
 ><dd>新規登録、ログイン後右上の投稿ボタンを押す事で画層投稿画面に遷移しimage,title,textを入力することで投稿できる</dd>
 
 <dt>・コメント機能</dt>
 
 ><dd>ユーザーがログインしていればコメントを画像詳細画面からできる</dd>
 
 <dt>・いいね機能(実装中)</dt>
 
 ><dd>今後実装予定</dd>
 
</dl>

 -------------------------------------
<h1>開発日数</h1>
<dl>
 
 ><dd>2020年11月23日 ~ 開発中</dd>
 
 ><dd>日/時間　　8時間</dd>
 
</dl>
 
 -------------------------------------
<h1>開発言語</h1>
<dl>
  <dt>言語・バージョン</dt>
 
  ><dd>Ruby/Rails 6.0.0</dd>
  
  <dt>フロント</dt>
  
  ><dd>HTML/CSS/JavaScript</dd>
  
  <dt>テスト実装</dt>
  
  ><dd>RSpec/Factory.Bot</dd>
  
  <dt>実装Gem</dt>
  
  
  ><dd>devise/rspec_rails/factory_bot_rails/mini_magick/image_processing</dd>
  ><dd>rubocop/faker</dd>
  
</dl>

  -------------------------------------
## users テーブル

| Column             | Type       | Options     |
| ----------         | ------     | ----------- |
| nickname           | string     | null: false |
| email              | string     | null: false |
| encrypted_password | string     | null: false |

### Association
- has_many   :posts
- has_many   :comments
- has_many   :likes

## posts テーブル

| Column   | Type       | Options      |
| ---------| --------   | ------------ |
| title    | string     | null: false  |
| text     | text       | null: false  |
| user     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many   :comments
- has_many   :likes

## comments テーブル

| Column   | Type       | Options      |
| ---------| --------   | ------------ |
| comment  | string     | null: false  |
| user     | references | null: false, foreign_key: true |
| post     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post

## likes テーブル

| Column   | Type       | Options      |
| ---------| --------   | ------------ |
| user     | references | null: false, foreign_key: true |
| post     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post