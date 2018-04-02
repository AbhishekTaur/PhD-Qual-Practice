class AdminController < ApplicationController

  def question_params
    params.require(:question_bank).permit(:category, :question, :option1, :option2, :option3, :option4, :option5, :answer)
  end



  def index
    @questions = QuestionBank.all
  end


  def new
    # default: render 'new' template
  end

  def create
    @question = QuestionBank.create!(question_params)
    flash[:notice] = "Question was successfully added."
    redirect_to admin_index_path
  end

  def delete
  end

  def update
  end
end
