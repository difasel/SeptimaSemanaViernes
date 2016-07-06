class Deck < ActiveRecord::Base
  # Remember to create a migration!
  validates :name_deck, presence: true, uniqueness: true
  has_many :cards
end
