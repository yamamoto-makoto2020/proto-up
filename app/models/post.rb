class Post < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :text
    validates :image
  end

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_one_attached :image
end
