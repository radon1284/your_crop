class Store < ActiveRecord::Base
  belongs_to :user
  has_many :products
  acts_as_votable 
end
