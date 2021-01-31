class ApplicationController < ActionController::Base

  private
  def if_user_signed_in?
    if current_user == nil
      redirect_to new_user_session_path, alert: 'Kindly Sign In'
    end
  end

end
