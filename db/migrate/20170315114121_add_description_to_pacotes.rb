class AddDescriptionToPacotes < ActiveRecord::Migration[5.0]
  def change
    add_column :pacotes, :description, :string
  end
end
