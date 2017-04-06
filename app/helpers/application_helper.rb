module ApplicationHelper

  def logged_in?
    !!session
  end

end
