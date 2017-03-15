class Pacote < ApplicationRecord
  belongs_to :tipo_pacote
  has_many :clientepacotes, :class_name => "Clientepacote", dependent: :destroy
  has_many :psicologapacotes, :class_name => "Psicologapacote", dependent: :destroy

  accepts_nested_attributes_for :clientepacotes, reject_if: :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :psicologapacotes, reject_if: :all_blank, :allow_destroy => true
end
