class Backoffice::AdminsController < BackofficeController
	before_action :set_admin, only: [:edit, :update, :destroy]
	after_action :verify_authorized, only: :new
	after_action :verify_policy_scoped, only: :index

	def index
		#@admin = Admin.all
		#@admin = Admin.with_restricted_access
		@admin = policy_scope(Admin)
	end

	def create
		@admin = Admin.new(params_admin)
		if @admin.save
			redirect_to  backoffice_admins_path, 
			notice: I18n.t('messages.created_with', item: @admin.name)
		else
			render :new
		end
	end

	def new
		@admin = Admin.new
		authorize @admin
	end

	def edit
	end

	def update
		if @admin.update(params_admin)
			redirect_to  backoffice_admins_path, 
			notice:  I18n.t('messages.updated_with', item: @admin.name)
		else
			render :edit
		end
	end

	def destroy
		admin_name = @admin.name
		
		if @admin.destroy
			redirect_to  backoffice_admins_path, 
			notice: I18n.t('messages.destroyed_with', item: admin_name)
		else
			render :index
		end
	end

	private

	def set_admin
		@admin = Admin.find(params[:id])
	end

	def params_admin

		pwd = params[:admin][:password]
		pwdc = params[:admin][:password_confirmation]

		if pwd.blank? && pwdc.blank?
			params[:admin].except!(:password, :password_confirmation)
		end

		params.require(:admin).permit(:name, :email, :password, :password_confirmation)
	end
end