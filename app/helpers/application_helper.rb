module ApplicationHelper
  def localize_current_path(locale)
      current_uri = request.env['PATH_INFO']
      my_path = ActionController::Routing::Routes.recognize_path current_uri, :method => :get
      #above works only with :get, you could pass in the current method with :method => request.method.to_sym
      url_for(my_path.merge!(:locale => locale))
    end
end
