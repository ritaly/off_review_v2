class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.decimal :total_price
      t.belongs_to :offer
      t.belongs_to :product

      t.timestamps
    end
  end
end
