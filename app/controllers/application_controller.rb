class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.instance_of?(Administrator)
      admin_agendas_path
    else
      super
    end
  end
end
