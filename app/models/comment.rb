class Comment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  belongs_to :post

  has_many :commentvotes

  validates_presence_of :content
end
