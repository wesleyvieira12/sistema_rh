
class UserPolicy

  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def linkClients?
    @user.kind=="administrador"
  end

  def linkMessage?
    @user.kind=="administrador"
  end

  def linkEmpresas?
  	@user.kind=="administrador"
  end

  def linkPsicologas?
  	@user.kind=="administrador"
  end

  def linkSobres?
    @user.kind=="administrador"
  end

  def createContact?
    c = Contato.all
    c.size==0
  end

  def createEmpresa?
    false
  end

  def createPsicologa?
    false
  end

  def createCliente?
    false
  end

  def createMessage?
    false
  end

  def editMessage?
    false
  end

  def editCliente?
    false
  end

  def editPsicologa?
    false
  end

  def editEmpresa?
    false
  end  
  
end
