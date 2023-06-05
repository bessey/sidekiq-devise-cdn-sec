class CookieConstraint
  def matches?(request)
    request.session[:counter] = 2
    true
  end
end
