class InquiryMailer < ActionMailer::Base
  def notification(inquiry)
    subject    "#{Spree::Config[:site_name]} Contact Us Form Received"
    body       :inquiry => inquiry
    recipients Spree::Config[:contact_form_to] ? Spree::Config[:contact_form_to].split(/\s+,\s+/) : nil
    bcc        Spree::Config[:contact_form_bcc] ? Spree::Config[:contact_form_bcc].split(/\s+,\s+/) : ''
    from       inquiry.email
  end
end
