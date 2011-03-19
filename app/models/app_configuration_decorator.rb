AppConfiguration.class_eval do
    preference :contact_us_ask_for_order_number, :boolean, :default => true
    preference :contact_us_ask_for_phone, :boolean, :default => true
    preference :contact_us_inquiry_types, :string, :default => 'General Information,Order Status,Feedback,Feature Request,Problem With Site'
end