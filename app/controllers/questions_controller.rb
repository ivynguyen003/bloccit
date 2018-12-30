class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  # def new
  #   @questions = Question.new
  # end

  # def create
  #   @questions = Question.new(params.require(:question).permit(:title, :body, :resolved))
  #   if @question.ave
  #     flash[:notice] = "Question was saved"
  #     redirect_to @questions
  #   else
  #     flash[:error] = "There was an error saving the question. Please try again."
  #     render :new
  #   end
  # end

  def edit
  end
end
