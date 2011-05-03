class Page < ActiveRecord::Base
  has_friendly_id :title, :use_slug => true
  
  
  def body
    RDiscount.new(read_attribute(:description), :no_pseudo_protocols, :filter_html, :filter_styles).to_html
  end
  
end