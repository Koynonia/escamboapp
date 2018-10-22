class Category < ActiveRecord::Base

	# Associotions
	has_many :ads

	# Validations
	validates_presence_of :description

	# Scopes
	scope :order_by_description, -> { order(:description) }
end
