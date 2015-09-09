class CreateAddress < ActiveRecord::Migration
  def change
    create_table :addresses do |p|
      p.belongs_to :user, index: true
      p.references :country, index: true

      p.string :address, null: false
      p.string :number, null: false
      p.string :complement
      p.string :city, null: false
      p.string :state, null: false
      p.string :zipcode, null: false
      p.string :latitude
      p.string :longitude

      p.timestamps null: false
    end
  end
end
