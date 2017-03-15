class ClientepacotesController < ApplicationController
  before_action :set_clientepacote, only: [:show, :edit, :update, :destroy]

  # GET /clientepacotes
  # GET /clientepacotes.json
  def index
    @clientepacotes = Clientepacote.all
  end

  # GET /clientepacotes/1
  # GET /clientepacotes/1.json
  def show
  end

  # GET /clientepacotes/new
  def new
    @clientepacote = Clientepacote.new
  end

  # GET /clientepacotes/1/edit
  def edit
  end

  # POST /clientepacotes
  # POST /clientepacotes.json
  def create
    @clientepacote = Clientepacote.new(clientepacote_params)

    respond_to do |format|
      if @clientepacote.save
        format.html { redirect_to @clientepacote, notice: 'Clientepacote was successfully created.' }
        format.json { render :show, status: :created, location: @clientepacote }
      else
        format.html { render :new }
        format.json { render json: @clientepacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientepacotes/1
  # PATCH/PUT /clientepacotes/1.json
  def update
    respond_to do |format|
      if @clientepacote.update(clientepacote_params)
        format.html { redirect_to @clientepacote, notice: 'Clientepacote was successfully updated.' }
        format.json { render :show, status: :ok, location: @clientepacote }
      else
        format.html { render :edit }
        format.json { render json: @clientepacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientepacotes/1
  # DELETE /clientepacotes/1.json
  def destroy
    @clientepacote.destroy
    respond_to do |format|
      format.html { redirect_to clientepacotes_url, notice: 'Clientepacote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientepacote
      @clientepacote = Clientepacote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clientepacote_params
      params.require(:clientepacote).permit(:client_id)
    end
end
