class Backoffice::SendMailController < ApplicationController

	def edit
		@admin = Admin.find(params[:id])
		
		respond_to do |format|
			format.js
		end
	end

	def create
		begin
			AdminMailer.send_message(current_admin, params_send_email).deliver_now
			@notify_message = t('messages.email_delivered')
			@notify_flag = "success"
		rescue
			@notify_message = t('messages.email_not_delivered')
			@notify_flag = "error"
		end
		respond_to do |format|
			format.js
		end
	end

	private

	def params_send_email
		params.require(:send_email).permit(:recipient_email, :subject_text, :message_text)

	end
end
