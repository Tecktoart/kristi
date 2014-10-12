class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.string :offer
      t.integer :price


      t.timestamps
    end
  end
end
