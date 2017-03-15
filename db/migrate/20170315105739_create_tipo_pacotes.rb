class CreateTipoPacotes < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_pacotes do |t|
      t.string :name
      t.integer :numeroEntrevistas

      t.timestamps
    end
  end
end
