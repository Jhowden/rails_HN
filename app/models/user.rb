class User < ActiveRecord::Base
  attr_accessible :username
  attr_protected :password_digest

  has_secure_password
  validates_uniqueness_of :username
  validates_presence_of :username, :password
  has_many :posts
  has_many :comments
  has_many :postvotes
  has_many :commentvotes


end
