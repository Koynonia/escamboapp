class AdminMailerPreview < ActionMailer::Preview
	def update_email
		AdminMailer.update_email(Admin.first, Admin.last)
	end

	def send_message
		AdminMailer.send_message(Admin.first.email, params_send_email)
		#AdminMailer.send_message(Admin.first.email, Admin.last.email, "Subject Test", "Lorem ipsum amet incididunt aliqua culpa.")
	end

	private

	def params_send_email
		{
			:recipient_email => Admin.last.email, 
			:subject_text => "Subject Test", 
			:message_text =>  "Lorem ipsum amet incididunt aliqua culpa."
		}
	end
end
