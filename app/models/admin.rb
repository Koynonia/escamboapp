class Admin < ActiveRecord::Base
	enum role: [:full_access, :restricted_accsess]

  scope :with_full_access, -> { where(role: 'full_access') }

 # def self.with_full_access
 #   where(role: 'full_access')
 # end

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
