class AdminController < ApplicationController
  before_action :logged_in_admin, only: [:index, :show]
  
  def index
    @users = User.all
  end
  
  def admin_questions
    @questions = QuestionBank.all
  end

  def show
    @question = QuestionBank.find(params[:id])
    @question.update(reviewStatus: "Approved")
    redirect_to action: "index"
    return
  end

  def destroy
    if params[:flag] == "q"
    	@question = QuestionBank.find(params[:id])
    	@question.destroy
    	flash[:destroy] = "Question-'#{@question.id}' deleted."
    	redirect_to admin_questions_path
    else
	@user = User.find(params[:id])
	@user.destroy
    	flash[:notice] = "User/Admin-'#{@user.email}' deleted."
    	redirect_to admin_index_path

    end
  end
end
