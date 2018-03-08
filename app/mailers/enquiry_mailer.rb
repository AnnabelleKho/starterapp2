class EnquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.response.subject
  #
  def response(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)

    mail to: @enquiry.email, subject: "Hi " + @enquiry.name + ", your enquiry has been received :)"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.received.subject
  #
  def received(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    @greeting = "Hi"

    mail to: "annabelle.kho@gmail.com", subject: "Hey! An enquiry has been received!"
  end
end
