class Comment < ApplicationRecord
	belongs_to :post
	has_many :replies, dependent: :destroy
	has_many :likes, dependent: :destroy
	belongs_to :user , optional: :true
end
