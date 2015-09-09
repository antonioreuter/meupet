class CreateCountry < ActiveRecord::Migration
  def change
    create_table :countries do |p|
      p.string :country, null: false
      p.string :mnemonic
    end
  end
end
