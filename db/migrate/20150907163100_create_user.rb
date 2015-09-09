class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |p|
      p.string :name,  null: false
      p.string :document, null: false, unique: true, index: true
      p.string :email, null: false, unique: true
      p.string :phone, null: false
      p.text :description
      p.string :sex, default: 'M'
      p.boolean :ong, default: false
      p.boolean :status, default: true

      p.timestamps null: false
    end
  end
end
