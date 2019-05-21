#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper
end

  private
  # To confirm user logged in
  def logged_in_user
    unless logged_in?

      flash[:danger] = "Please log in."
      redirect_to login_url

  end

end
