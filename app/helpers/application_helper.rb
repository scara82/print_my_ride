module ApplicationHelper

  # @session_id = [session[:user_id]]

  def logged_in?
    !!session[:user_id]
  end

  def creator?
    if logged_in?
      !!Creator.find_by(user_id: session[:user_id])
    end
  end

end
