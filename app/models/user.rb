class User < ApplicationRecord
  has_many :blog
  has_many :comment

  validates_presence_of :email
end
