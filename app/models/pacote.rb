class Pacote < ApplicationRecord
  belongs_to :tipo_pacote
  has_many :clientepacotes, :class_name => "Clientepacote"

  accepts_nested_attributes_for :clientepacotes, reject_if: :all_blank, :allow_destroy => true
end
