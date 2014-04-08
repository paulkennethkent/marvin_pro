class AccessController < ApplicationController
  
  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  #requires you to login using an Admin User account before accessing with exceptions
  
  layout 'login'
  
  def index
    #display text & links
    
    render layout: 'application'
    #renders the standard application layout once logged in
  end

  def login
    #login form 
  end
  
  def attempt_login 
    if params[:username].present? && params[:password].present?
      found_user = AdminUser.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user 
      #Mark user as logged in 
      session[:user_id] = authorized_user.id
      session[:user_username] = authorized_user.username
      flash[:notice] = "You are now logged in."
      redirect_to(:action => 'index')
    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => 'login')
    end
  end
  

  

  
end
