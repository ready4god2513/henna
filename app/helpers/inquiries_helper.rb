module InquiriesHelper
  def inquiry_types
    %w[
      General_Inquiry
      Order_Inquiry
      Order_Change
      Vendor_Inquiry
      Feedback
    ].map {|x| x.sub(/\_/, ' ') }
  end
end
