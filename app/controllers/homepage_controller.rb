class HomepageController < ApplicationController  
  def index
  end
  
  def email_submit    
    if params['email_address']
      Email.create(:email => params[:email_address], :ip_address => request.remote_ip)
    end
    
    respond_to do |format|
      format.js
    end
  end
end
