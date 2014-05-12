class DemoController < ApplicationController
  	
  #layout false 

  def index
  	#render('hello')
  end

  def hello
  	#render('index')
  	@array = [1,2,3,4,5]
  	@id = params['id']
  	@page = params[:page]
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end
  
  def text_helpers 
  end 
  
  def number_helpers
  end 
  
  def make_error 
    # My guesses for the 3 most common errors: 
    #render(:text => "test") #syntax error 
    #render(:text => @something.upcase) #undefined method
    #render(:text => "1" + 1) #cant convert type 
  end

end
