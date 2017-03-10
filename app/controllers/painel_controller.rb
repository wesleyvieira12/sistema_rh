class PainelController < ApplicationController
	before_action :authenticate_user!
  def index
	@client = Client.new
	@empresa = Empresa.new
	@psicologa = Psicologa.new
  end
end
