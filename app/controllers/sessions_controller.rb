class SessionsController < ApplicationController  
  def create  
    auth = request.env["omniauth.auth"]  
        user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)  
      end
      
      failure
        flash[:error] = 'There was an error at the remote authentication service. You have not been signed in.'
        redirect_to root_url
      end
end
