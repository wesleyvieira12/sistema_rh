class CreateMensagems < ActiveRecord::Migration[5.0]
  def change
    create_table :mensagems do |t|
      t.text :description
      t.string :name
      t.string :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
