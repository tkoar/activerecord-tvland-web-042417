class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    name = []
    name << self.first_name
    name << self.last_name
    name.join(" ")
  end

  def list_roles
    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end
