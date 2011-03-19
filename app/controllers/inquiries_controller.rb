class InquiriesController < Spree::BaseController
  resource_controller
  
  def index
    #redirect_to(new_inquiry_url) unless params[:inquiry]
    build_object
    load_object
    render :action => :new
  end
 
  create.success do
    wants.html { redirect_to root_path }
  end
  
end
