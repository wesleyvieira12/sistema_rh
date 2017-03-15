class TipoPacotesController < ApplicationController
  before_action :set_tipo_pacote, only: [:show, :edit, :update, :destroy]

  # GET /tipo_pacotes
  # GET /tipo_pacotes.json
  def index
    @tipo_pacotes = TipoPacote.all
  end

  # GET /tipo_pacotes/1
  # GET /tipo_pacotes/1.json
  def show
  end

  # GET /tipo_pacotes/new
  def new
    @tipo_pacote = TipoPacote.new
  end

  # GET /tipo_pacotes/1/edit
  def edit
  end

  # POST /tipo_pacotes
  # POST /tipo_pacotes.json
  def create
    @tipo_pacote = TipoPacote.new(tipo_pacote_params)

    respond_to do |format|
      if @tipo_pacote.save
        format.html { redirect_to @tipo_pacote, notice: 'Tipo pacote was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_pacote }
      else
        format.html { render :new }
        format.json { render json: @tipo_pacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_pacotes/1
  # PATCH/PUT /tipo_pacotes/1.json
  def update
    respond_to do |format|
      if @tipo_pacote.update(tipo_pacote_params)
        format.html { redirect_to @tipo_pacote, notice: 'Tipo pacote was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_pacote }
      else
        format.html { render :edit }
        format.json { render json: @tipo_pacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_pacotes/1
  # DELETE /tipo_pacotes/1.json
  def destroy
    @tipo_pacote.destroy
    respond_to do |format|
      format.html { redirect_to tipo_pacotes_url, notice: 'Tipo pacote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_pacote
      @tipo_pacote = TipoPacote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_pacote_params
      params.require(:tipo_pacote).permit(:name, :numeroEntrevistas)
    end
end
