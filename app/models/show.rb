class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  
  def actors_list 
    list = []
    array_of_actors = self.shows.map {|actors| "#{actors.first_name} #{actors.last_name}" 
    list << array_of_actors
    list 
  end
    
  
end

 