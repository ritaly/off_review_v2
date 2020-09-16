class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :username
      t.string :last_name
      t.string :first_name

      t.timestamps
    end
  end
end
