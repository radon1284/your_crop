class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :store
  acts_as_votable 
end
