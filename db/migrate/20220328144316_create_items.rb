class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :category
      t.string :condition
      t.integer :starting_price
    end
  end
end
