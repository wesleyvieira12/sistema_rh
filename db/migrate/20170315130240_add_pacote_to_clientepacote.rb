class AddPacoteToClientepacote < ActiveRecord::Migration[5.0]
  def change
    add_reference :clientepacotes, :pacote, foreign_key: true
  end
end
