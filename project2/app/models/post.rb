class Post < ActiveRecord::Base
  has_many :comments
  validates :title, :content, {presence: true}
  belongs_to :user
end
