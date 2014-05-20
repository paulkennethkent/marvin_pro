class QuestionsController < ApplicationController
  before_action :confirm_logged_in
  
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
    @frameworks = Framework.all
    @products = Product.all
  end

  def create
    # Instatiate a new object
    @question = Question.new(question_params)
    # save the object
    if @question.save
      # if save succeeds, redirect to the index action
      flash[:notice] = "question created successfuly."
      redirect_to(:action => 'index')
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      @frameworks = Framework.all
      @products = Product.all
      render('new')
    end
  end

  def edit
    @question = Question.find(params[:id])
    @frameworks = Framework.all
    @products = Product.all
  end

  def update
    # Find an existing object using form parameters
    @question = Question.find(params[:id])
     #update the object
    if @question.update_attributes(question_params)
     #if save succeeds, redirect to the index action
      flash[:notice] = "question updated successfuly."
      redirect_to(:action => 'index')
    else
      # if save fails, redisplay the form so user can fix prolbmes 
      @frameworks = Framework.all
      @products = Product.all
      render('edit')
    end
  end

  
  def delete
     @question = Question.find(params[:id])
  end

  def destroy
    question = Question.find(params[:id]).destroy
    flash[:error] = "'#{question.id}' delted successfully."
    redirect_to(:action => 'index')
  end

   private
    def question_params
      params.require(:question).permit(:body, :framework_id, :product_id)
    end
end
