class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :status
      t.belongs_to :client
      t.belongs_to :salesman

      t.timestamps
    end
  end
end
