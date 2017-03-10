class CreatePsicologas < ActiveRecord::Migration[5.0]
  def change
    create_table :psicologas do |t|
      t.string :name
      t.integer :n_orgao
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
