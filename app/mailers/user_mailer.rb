class UserMailer < ApplicationMailer

    default from: Rails.application.credentials.email_provider_username

    def contact_email(contact)
        @contact = contact
        mail(to: Rails.application.credentials.email_provider_username, :subject => "Website Contact")
    end
    
end