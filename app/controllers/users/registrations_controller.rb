class Users::RegistrationsController < Devise::RegistrationsController

  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to new_user_session_path, notice: 'Usuario criado. Entre na plataforma. ' }
        format.json { render :show, status: :created, location: new_user_session_path }
      else
        format.html { render :new }
        format.json { render json: edit_user_registration_path, status: :unprocessable_entity }
      end
    end

  end

  # GET /resource/edit
  def edit
     super
  end

  def show
  end

  # PUT /resource
  def update

    user_params[:password_confirmation] = user_params[:password]
    super

  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_user
      @user = User.find(current_user.id)
  end

  def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :kind)
  end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    if current_user.kind=="cliente"
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :curriculum])

    else
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password])
    end
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
