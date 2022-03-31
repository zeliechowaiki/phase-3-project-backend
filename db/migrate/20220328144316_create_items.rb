class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :condition
      t.integer :starting_price
      t.boolean :open
      t.datetime :auction_end
    end
  end
end
