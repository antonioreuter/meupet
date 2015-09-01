class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :comment
      t.integer :review

      t.timestamps null: false
    end
  end
end
