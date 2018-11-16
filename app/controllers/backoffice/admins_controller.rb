class Backoffice::AdminsController < BackofficeController
  before_action :set_admin, only: [:edit, :update]

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params_admin)
    if @admin.save
      redirect_to backoffice_admins_path, notice: "O Administrador (#{@admin.email}) foi cadastrado com sucesso!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    passwd = params[:admin][:password] # 1*
    passwd_confirmation = params[:admin][:password_confirmation] # 1*

    if passwd.blank? && passwd_confirmation.blank? # 1*
      params[:admin].delete(:password)
      params[:admin].delete(:password_confirmation)
    end
    # 1* Permite atualizar um admin sem alterar a senha.

    if @admin.update(params_admin)
      redirect_to backoffice_admins_path, notice: "O Administrador (#{@admin.email}) foi atualizado com sucesso!"
    else
      render :edit
    end
  end

  private

    def set_admin
      @admin = Admin.find(params[:id])
    end

    def params_admin
      params.require(:admin).permit(:email, :password, :password_confirmation)
    end
end