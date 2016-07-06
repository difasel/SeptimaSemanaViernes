class Card < ActiveRecord::Base
  # Remember to create a migration!
  validates :question, presence: true, uniqueness: true
  validates :answer, presence: true
end
