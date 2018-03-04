class Card < ApplicationRecord
  validates :front_text, presence: true
  validates :back_text, presence: true
end
