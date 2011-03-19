class PagesController < Spree::BaseController
  
  
  def show
    @page = Page.find(params[:id])
    @page_title = @page.title
  end
end
