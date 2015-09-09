class CreatePet < ActiveRecord::Migration
  def change
    create_table :pets do |p|
      p.references :owner, references: :users, index: true
      p.references :adopted_by, references: :users, index: true
      p.references :category, index: true
      p.references :address, index: true

      p.string :name, null: false
      p.text :description, null: false
      p.date :birth_date
      p.date :adopted_date
      p.boolean :adopted, default: false

      p.timestamps null: false
    end
  end
end
