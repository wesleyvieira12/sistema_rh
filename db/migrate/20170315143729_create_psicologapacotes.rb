class CreatePsicologapacotes < ActiveRecord::Migration[5.0]
  def change
    create_table :psicologapacotes do |t|
      t.references :psicologa, foreign_key: true

      t.timestamps
    end
  end
end
