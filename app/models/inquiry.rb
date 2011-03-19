class Inquiry < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :message

  attr_accessible :name, :email, :message, :phone_number, :order_no, :inquiry_type
  
  after_save :deliver_notification_email

  def deliver_notification_email
    InquiryMailer.deliver_notification(self)
    # For delayed_job
    # InquiryMailer.send_later(:deliver_notification, self)
  rescue
    RAILS_DEFAULT_LOGGER.warn("Inquiry mailer failed to send mail due to the contact email being undefined")
  end
  
end
