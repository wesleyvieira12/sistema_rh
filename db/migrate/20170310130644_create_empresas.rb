class CreateEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :empresas do |t|
      t.string :name
      t.string :agent
      t.string :cnpj
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
