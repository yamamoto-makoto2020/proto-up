<h1>アプリケーション名:   Proto-Up</h1><br>

-------------------------------------
<h1>このアプリで出来る事</h1>
<dl>
 
 ><dd>簡単にユーザー登録をする事ができる</dd>
 
 ><dd>簡単な操作で画像を投稿する事ができる</dd>
 
 ><dd>ワンクリックでイイね、共感をする事ができる</dd>
 
 ><dd>コメントを残す事ができる</dd>
 
 </dl>
 
 -------------------------------------
 <h1>本番環境</h1>
 <dl>
 
 ><dd>現在herokuを使っていますが、今後変更があります。</dd>
 
 ><dd>ログイン用メールアドレス</dd>
 
 ><dd>sample@sample.com</dd>
 
 ><dd>ログインパスワード</dd>
 
 ><dd>aaaaa1</dd>
 
 ><dd>https://proto-up.herokuapp.com/</dd>
 
 <dl>
 
 -------------------------------------
<h1>ペルソナ</h1>
<dl>
 
 ><dd>年代は20代から３０代、性別は男女問わず。簡単に画像を投稿でき、共感できるアプリを探している</dd>
 
 ><dd>他人にお気に入りの画像を見てもらう事、共感される事に喜びを感じている</dd>
 
 </dl>
 
 -------------------------------------
<h3>■トップページ</h3><br>
<img width="1000" alt="スクリーンショット 2020-12-16 11 04 22" src="https://user-images.githubusercontent.com/72425802/102295799-79b96b00-3f8f-11eb-8bb5-d29096541945.png">
<h3>■新規登録画面</h3><br>
<img width="1000" alt="スクリーンショット 2020-12-04 11 11 33" src="https://user-images.githubusercontent.com/72425802/101113007-d62c9a00-3621-11eb-807e-9aa4fcd95b15.png">
<h3>■投稿画面</h3><br>
<img width="1000" alt="スクリーンショット 2020-12-04 11 11 56" src="https://user-images.githubusercontent.com/72425802/101113010-d75dc700-3621-11eb-9114-7ca7666590af.png">
<h3>■いいね機能</h3><br>
<img width="1000" alt="スクリーンショット 2020-12-16 11 24 23" src="https://user-images.githubusercontent.com/72425802/102296737-52639d80-3f91-11eb-9cf9-5f6b2c979c5c.png"> 
<h3>■コメント</h3><br>
<img width="1000" alt="スクリーンショット 2020-12-16 11 33 59" src="https://user-images.githubusercontent.com/72425802/102297449-a7ec7a00-3f92-11eb-9f5f-5bda5685cee9.png">

 -------------------------------------
<h1>機能</h1>
<dl>
 <dt>・ユーザー登録機能</dt>
 
 ><dd>nickname,email,passwordを入力する事で登録する事ができる</dd>
 
 <dt>・画像投稿機能</dt>
 
 ><dd>新規登録、ログイン後右上の投稿ボタンを押す事で画層投稿画面に遷移しimage,title,textを入力することで投稿できる</dd>
 
 <dt>・コメント機能</dt>
 
 ><dd>ユーザーがログインしていればコメントを画像詳細画面からできる</dd>
 
 <dt>・いいね機能</dt>
 
 ><dd>ユーザーログイン後ホームの☆を押すことでいいねを押せる</dd>
 
 <dt>・マイページ機能で投稿した画像の一覧が表示される</dt>
 
 ><dd></dd>
 
</dl>

 -------------------------------------
<h1>開発日数</h1>
<dl>
 
 ><dd>2020年11月23日 ~ 不具合修正中</dd>
 
 ><dd>日/時間　　6時間</dd>
 
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

  --------------------------------------
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
