class FrameworksController < ApplicationController
  def index
    @frameworks = Framework.all
  end

  def show
    @framework = Framework.find(params[:id])
  end

  def new
    @framework = Framework.new({:name => "Default"})
  end

  def create
    # Instatiate a new object
    @framework = Framework.new(framework_params)
    # save the object
    if @framework.save
      # if save succeeds, redirect to the index action
      flash[:notice] = "Framework created successfuly."
      redirect_to(:action => 'index')
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      render('new')
    end
  end


  def edit
    @framework = Framework.find(params[:id])
  end

  def update
    # Find an existing object using form parameters
    @framework = Framework.find(params[:id])
     #update the object
    if @framework.update_attributes(framework_params)
     #if save succeeds, redirect to the index action
      flash[:notice] = "Framework updated successfuly."
      redirect_to(:action => 'show', :id => @framework.id)
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      render('edit')
    end
  end

  
  def delete
     @framework = Framework.find(params[:id])
  end

  def destroy
    framework = Framework.find(params[:id]).destroy
    flash[:error] = "'#{framework.name}' delted successfully."
    redirect_to(:action => 'index')
  end

  private
    def framework_params
      params.require(:framework).permit(:name)
    end

end
