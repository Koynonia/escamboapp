class Member < ActiveRecord::Base

	# RateRaty gem
	ratyrate_rater
	
	# Associations
	has_many :ads

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :validatable
end
