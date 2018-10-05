class AdminMailer < ApplicationMailer

	def update_email(current_admin, admin)
		@current_admin = current_admin
		@admin = admin
		mail(to: @admin.email, subject: t('messages.email_subject_update'))
	end

	def send_message(current_admin, params)
		@current_admin = current_admin
		@recipient = params[:recipient_email]
		@subject = params[:subject_text]
		@message = params[:message_text]
		mail(to: @recipient, subject: @subject)
	end
end
