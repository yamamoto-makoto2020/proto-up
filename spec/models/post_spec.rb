require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '画像投稿機能' do
    context '画像投稿がうまくいく時' do
      it 'title,text,imageが正しく入力された時登録できる' do
        expect(@post).to be_valid
      end
    end
    context '画像投稿ができない時' do
      it 'titleが空だと投稿できない' do
        @post.title = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Title can't be blank")
      end
      it 'textが空だと投稿できない' do
        @post.text = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Text can't be blank")
      end
      it 'imageが空だと投稿できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Image can't be blank")
      end
      it 'userが紐付いていないと保存できないこと' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("User must exist")   
      end
    end
  end
end
