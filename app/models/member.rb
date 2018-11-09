class Member < ActiveRecord::Base

	# RateRaty gem
	ratyrate_rater
	
	# Associations
	has_many :ads
	has_one :profile_member
	accepts_nested_attributes_for :profile_member

	#Validations
	validate :nested_attributes

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :validatable

	private

	def nested_attributes
		if nested_attributes_blank?
			errors.add( :base, I18n.t('messages.error_nested_attributes') )
		end
	end

	def nested_attributes_blank?
		profile_member.first_name.blank? || profile_member.second_name.blank?
	end

end
