class Show < ActiveRecord::Base
has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actor_list
    self.actors.map {|actor| actor.full_name}
  end
end