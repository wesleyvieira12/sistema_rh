class AddPacoteToPsicologapacotes < ActiveRecord::Migration[5.0]
  def change
    add_reference :psicologapacotes, :pacote, foreign_key: true
  end
end
