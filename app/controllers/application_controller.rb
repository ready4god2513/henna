class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
  rescue_from AbstractController::ActionNotFound, with: :render_404
  rescue_from NoMethodError, with: :render_500
  
  def render_404
    render template: "errors/routing", status: 404
  end
  
  def render_500
    render template: "errors/500", status: 500
  end

  def render_record_not_found
    render template: "errors/record_not_found", status: 404
  end
end
