
class UserPolicy

  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def linkClients?
    @user.kind=="administrador"
  end

  def linkEmpresas?
  	@user.kind=="administrador"
  end

  def linkPsicologas?
  	@user.kind=="administrador"
  end
  
end
