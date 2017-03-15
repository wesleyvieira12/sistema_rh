class PsicologapacotesController < ApplicationController
  before_action :set_psicologapacote, only: [:show, :edit, :update, :destroy]

  # GET /psicologapacotes
  # GET /psicologapacotes.json
  def index
    @psicologapacotes = Psicologapacote.all
  end

  # GET /psicologapacotes/1
  # GET /psicologapacotes/1.json
  def show
  end

  # GET /psicologapacotes/new
  def new
    @psicologapacote = Psicologapacote.new
  end

  # GET /psicologapacotes/1/edit
  def edit
  end

  # POST /psicologapacotes
  # POST /psicologapacotes.json
  def create
    @psicologapacote = Psicologapacote.new(psicologapacote_params)

    respond_to do |format|
      if @psicologapacote.save
        format.html { redirect_to @psicologapacote, notice: 'Psicologapacote was successfully created.' }
        format.json { render :show, status: :created, location: @psicologapacote }
      else
        format.html { render :new }
        format.json { render json: @psicologapacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /psicologapacotes/1
  # PATCH/PUT /psicologapacotes/1.json
  def update
    respond_to do |format|
      if @psicologapacote.update(psicologapacote_params)
        format.html { redirect_to @psicologapacote, notice: 'Psicologapacote was successfully updated.' }
        format.json { render :show, status: :ok, location: @psicologapacote }
      else
        format.html { render :edit }
        format.json { render json: @psicologapacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psicologapacotes/1
  # DELETE /psicologapacotes/1.json
  def destroy
    @psicologapacote.destroy
    respond_to do |format|
      format.html { redirect_to psicologapacotes_url, notice: 'Psicologapacote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psicologapacote
      @psicologapacote = Psicologapacote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def psicologapacote_params
      params.require(:psicologapacote).permit(:psicologa_id)
    end
end
