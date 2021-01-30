class Blog < ApplicationRecord
  belongs_to :user
  has_many :comment

  validates_presence_of :title
  validates_presence_of :content
end
