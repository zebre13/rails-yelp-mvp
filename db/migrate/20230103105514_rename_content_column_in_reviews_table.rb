class RenameContentColumnInReviewsTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :reviews, :contente, :content
  end
end
