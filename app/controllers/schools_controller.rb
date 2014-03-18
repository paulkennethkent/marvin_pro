class SchoolsController < ApplicationController
  
  before_action :confirm_logged_in
  
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def create
    # Instatiate a new object
    @school = School.new(school_params)
    # save the object
    if @school.save
      # if save succeeds, redirect to the index action
      flash[:notice] = "School created successfuly."
      redirect_to(:action => 'index')
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      render('new')
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    # Find an existing object using form parameters
    @school = School.find(params[:id])
     #update the object
    if @school.update_attributes(school_params)
     #if save succeeds, redirect to the index action
      flash[:notice] = "School updated successfuly."
      redirect_to(:action => 'show', :id => @school.id)
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      render('edit')
    end
  end

  
  def delete
     @school = School.find(params[:id])
  end

  def destroy
    school = School.find(params[:id]).destroy
    flash[:error] = "'#{school.name}' delted successfully."
    redirect_to(:action => 'index')
  end

   private
    def school_params
      params.require(:school).permit(:name, :postcode, :phone)
    end
end
