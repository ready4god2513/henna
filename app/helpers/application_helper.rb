module ApplicationHelper
  
  def render_home_page
    page = Page.find_by_title("home") || Page.new
    page.body
  end
  
end