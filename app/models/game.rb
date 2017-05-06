class Game < ApplicationRecord
  has_many :guesses

  validates :number, presence: true, numericality: true
end
