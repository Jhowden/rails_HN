class Post < ActiveRecord::Base
  attr_accessible :title, :url, :content
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :postvotes, dependent: :destroy

  validates :title, presence: true
  validates :url, presence: true, unless: "!content.nil?"
  validates :content, presence: true, unless: "!url.nil?"
  validates :url, allow_blank: true, format: { with: /^#{URI::regexp}$/, message: "Must be valid URL" }

  def is_external_content?
    url.present?
  end
end
