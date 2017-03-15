class Client < ApplicationRecord
	belongs_to :user
	has_many :cliente_pacotes
end
