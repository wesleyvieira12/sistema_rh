class PsicologasController < ApplicationController
  before_action :set_psicologa, only: [:show, :edit, :update, :destroy]

  # GET /psicologas
  # GET /psicologas.json
  def index
    @q = Psicologa.ransack(params[:q])
    @psicologas = @q.result(distinct: true)
  end

  # GET /psicologas/1
  # GET /psicologas/1.json
  def show
  end

  # GET /psicologas/new
  def new
    @psicologa = Psicologa.new
  end

  # GET /psicologas/1/edit
  def edit
  end

  # POST /psicologas
  # POST /psicologas.json
  def create
    @psicologa = Psicologa.new(psicologa_params)
    @psicologa.user = current_user
    respond_to do |format|
      if @psicologa.save
        format.html { redirect_to @psicologa, notice: 'Psicologa was successfully created.' }
        format.json { render :show, status: :created, location: @psicologa }
      else
        format.html { render :new }
        format.json { render json: @psicologa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /psicologas/1
  # PATCH/PUT /psicologas/1.json
  def update
    respond_to do |format|
      if @psicologa.update(psicologa_params)
        format.html { redirect_to @psicologa, notice: 'Psicologa was successfully updated.' }
        format.json { render :show, status: :ok, location: @psicologa }
      else
        format.html { render :edit }
        format.json { render json: @psicologa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psicologas/1
  # DELETE /psicologas/1.json
  def destroy
    @psicologa.destroy
    respond_to do |format|
      format.html { redirect_to psicologas_url, notice: 'Psicologa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psicologa
      @psicologa = Psicologa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def psicologa_params
      params.require(:psicologa).permit(:name, :n_orgao, :user_id)
    end
end
