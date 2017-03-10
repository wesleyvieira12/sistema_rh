class AddFigureToContatos < ActiveRecord::Migration[5.0]
  def change
    add_column :contatos, :figure, :string
  end
end
