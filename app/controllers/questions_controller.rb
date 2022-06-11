class QuestionsController < ApplicationController
  #質問系コントローラ
  def new
    #質問作成画面
  end

  def create
    #質問作成POST受け取り
    Question.create(user_id: session[:user_id],title: params[:question][:title],detail: params[:question][:detail])

  end

  def view
    #質問詳細画面
    @question_data = Question.joins(:user).select("questions.*, users.*").find_by(id: params[:id])
    # p @question_data
    unless @question_data
      render_404
    end
  end

  def complete
    #作成完了
  end

  def list
    #質問一覧
  end

  def answer
    #回答画面
  end

  def answer_create
    #回答POST受け取り
  end
end
