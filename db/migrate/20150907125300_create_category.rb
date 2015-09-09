class CreateCategory < ActiveRecord::Migration
  def change
    create_table :categories do |p|
      p.string :name
      p.text :description

      p.timestamps null: false
    end
  end
end
