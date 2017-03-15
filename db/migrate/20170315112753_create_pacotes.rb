class CreatePacotes < ActiveRecord::Migration[5.0]
  def change
    create_table :pacotes do |t|
      t.references :tipo_pacote, foreign_key: true

      t.timestamps
    end
  end
end
