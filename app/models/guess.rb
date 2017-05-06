class Guess < ApplicationRecord
  belongs_to :game

  validates :number, presence: true, numericality: true
end
