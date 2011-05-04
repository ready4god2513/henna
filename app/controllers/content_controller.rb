class ContentController < Spree::BaseController
  resource_controller
  
  def show
    render "errors/routing"
  end
  
end