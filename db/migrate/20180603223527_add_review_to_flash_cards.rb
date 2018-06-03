class AddReviewToFlashCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :review, :boolean, default: true
  end
end
