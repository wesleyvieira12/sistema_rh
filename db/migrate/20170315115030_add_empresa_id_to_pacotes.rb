class AddEmpresaIdToPacotes < ActiveRecord::Migration[5.0]
  def change
    add_column :pacotes, :empresa_id, :integer
  end
end
