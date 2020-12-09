require 'rails_helper'

RSpec.describe Like, type: :model do
  before do
    @like = FactoryBot.build(:like)
  end

  describe 'いいね投稿機能' do
    context 'いいねがうまくいく時' do
      it 'userとpostが紐付いていると登録できる' do
        expect(@like).to be_valid
      end
    end
    context 'いいねができない時' do
      it 'userが紐付いていないと保存できないこと' do
        @like.user = nil
        @like.valid?
        expect(@like.errors.full_messages).to include('User must exist')
      end
      it 'postが紐付いていないと保存できないこと' do
        @like.post = nil
        @like.valid?
        expect(@like.errors.full_messages).to include('Post must exist')
      end
    end
  end
end
