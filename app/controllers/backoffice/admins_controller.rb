class Backoffice::AdminsController < BackofficeController
	before_action :set_admin, only: [:edit, :update, :destroy]

	def index
		@admin = Admin.with_full_access
	end

	def create
		@admin = Admin.new(params_admin)
		if @admin.save
			redirect_to  backoffice_admins_path, 
			notice: "O administrador #{@admin.nome} foi cadastrado com sucesso!"
		else
			render :new
		end
	end

	def new
		@admin = Admin.new
	end

	def edit
	end

	def update
		pwd = params[:admin][:password]
		pwdc = params[:admin][:password_confirmation]

		if pwd.blank? && pwdc.blank?
			params[:admin].delete(:password)
			params[:admin].delete(:password_confirmation)
		end

		if @admin.update(params_admin)
			redirect_to  backoffice_admins_path, 
			notice: "O administrador #{@admin.name} foi atualizado com sucesso!"
		else
			render :edit
		end
	end

	def destroy
		admin_nome = @admin.nome
		
		if @admin.destroy
			redirect_to  backoffice_admins_path, 
			notice: "O administrador #{admin_nome} foi removido com sucesso!"
		else
			render :index
		end
	end

	private

	def set_admin
		@admin = Admin.find(params[:id])
	end

	def params_admin
		params.require(:admin).permit(:name, :email, :password, :password_confirmation)
	end
end
