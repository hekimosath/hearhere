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
    logged_in_user
    @question_data = Question.joins(:user).find_by(id: params[:id])
    # p @question_data
    unless @question_data
      render_404
    end
    @answers = []
    @answer_threads = AnswerThread.joins(:answer).where(question_id: params[:id]).all
    @answer_threads.each do |val|
      answer = Answer.joins(:user).where(answer_thread_id: val[:id]).all
      @answers.push(answer)
    end
    p @answers
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
    p params
    insert_data = AnswerThread.create(create_user_id: session[:user_id],question_id: params[:question][:question_id],)
    Answer.create!(answer_thread_id: insert_data[:id],user_id: session[:user_id],status: "1",detail: params[:question][:detail])
  end
end
