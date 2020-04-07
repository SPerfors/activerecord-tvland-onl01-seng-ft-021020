class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  
end