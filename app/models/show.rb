class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  
  def actors_list 
    show = []
    
    
  
end

    roles = []
    array_of_characters = self.characters.map {|character| character.name}
    array_of_shows = self.shows.map {|shows| shows.name}
    role = array_of_characters.concat array_of_shows
    roles << role.join(" - ")
    roles