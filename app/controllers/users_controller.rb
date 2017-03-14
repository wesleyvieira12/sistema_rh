class UsersController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
  end

  def curriculum
    current_user.curriculum
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  def change
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create

    @user = User.new(user_params)

    respond_to do |format|

      if @user.save
        format.html { redirect_to users_path, notice: 'Usuário criado.' }
        format.json { render :show, status: :created, location: users_path }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

    user_params[:password_confirmation] = user_params[:password]

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
    	if params[:id]!=nil
        	@user = User.find(params[:id])
        else
        	@user = User.find(current_user.id)
        end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:curriculum, :email, :password, :password_confirmation, :current_password)
    end
end
