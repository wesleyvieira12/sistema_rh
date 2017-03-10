class User < ApplicationRecord
  
  has_one :client
  has_one :psicologa
  has_one :empresa
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # KIND -> cliente(0), empresa(1), psicologa(2), administrador(3)
  enum kind: [:cliente, :empresa, :psicologa, :administrador]
end
