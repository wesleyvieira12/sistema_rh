class CreateContatos < ActiveRecord::Migration[5.0]
  def change
    create_table :contatos do |t|
      t.text :description

      t.timestamps
    end
  end
end
