class Admin < ActiveRecord::Base
	enum role: [:full_access, :restricted_accsess]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  def role_br
  	if self.role == 'full_access'
  		'Completo'
  	else
  		'Restrito'
  	end
  end
end
