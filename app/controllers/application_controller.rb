class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_for_mobile

  def check_for_mobile
    session[:mobile_override] = params[:mobile] if params[:mobile]
    prepare_for_mobile if mobile_device?
  end

  def prepare_for_mobile
    prepend_view_path Rails.root + 'app/views/mobile_views'
  end

  def mobile_device?
    if session[:mobile_override]
      session[:mobile_override] == '1'
    else
      (request.user_agent =~ /Mobile|webOS/) && (request.user_agent !~ /iPad/)
    end
  end

  private

    def authenticate
      login = authenticate_or_request_with_http_basic do |username, password|
        username == ENV['username'] && password == ENV['password']
      end
      session[:login] = login
    end
end
