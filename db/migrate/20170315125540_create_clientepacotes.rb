class CreateClientepacotes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientepacotes do |t|
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
