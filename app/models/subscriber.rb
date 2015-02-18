class Subscriber < ActiveRecord::Base
  has_many :subscriptions

  validates :name, presence: true
  validates :email, uniqueness: true
end
