class AdminPolicy < ApplicationPolicy

	def new?
		
	end

	class Scope < Scope
		def resolve
			scope.all
		end
	end
end
