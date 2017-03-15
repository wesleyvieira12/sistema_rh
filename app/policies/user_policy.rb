
class UserPolicy

  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def linkClients?
    @user.kind=="administrador"
  end

  def linkTipo?
    @user.kind=="administrador"
  end

  def linkPacote?
    @user.kind=="administrador" or @user.kind=="empresa"
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

  def createPacote?
    @user.kind=="administrador" or @user.kind=="empresa"
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

  def createTipo?
    @user.kind=="administrador"
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

  def editTipo?
    @user.kind=="administrador"
  end

  def editPacote?
    @user.kind=="administrador" or @user.kind=="empresa"
  end
  
end
