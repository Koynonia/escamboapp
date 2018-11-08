class Member < ActiveRecord::Base

	# RateRaty gem
	ratyrate_rater
	
	# Associations
	has_many :ads
	has_one :profile_member
	accepts_nested_attributes_for :profile_member

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :validatable
end
