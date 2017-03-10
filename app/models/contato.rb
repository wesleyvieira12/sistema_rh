class Contato < ApplicationRecord
	require 'carrierwave/orm/activerecord'
	mount_uploader :figure, FigureUploader
end
