require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        characters_and_shows = []
        search = Character.where(actor_id: self.id) 
        search.map{|info| "#{info.name} - #{info.show.name}"}
    end
end

# binding.pry