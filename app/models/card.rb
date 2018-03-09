class Card < ApplicationRecord
  default_scope { order(created_at: :desc) }
  validates :front_text, presence: true
  validates :back_text, presence: true
end
