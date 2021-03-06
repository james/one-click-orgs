class Exceptions < Merb::Controller
  
  # handle NotFound exceptions (404)
  def not_found
    render :format => :html
  end

  # handle NotAcceptable exceptions (406)
  def not_acceptable
    render :format => :html
  end

  def current_user
    Member.get(current_user_id)
  end
  
  def current_user_id
    session('cookie')[:current_user_id]
  end
  
end