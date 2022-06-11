class HomeController < ApplicationController
  def top
    @hoge = "fugaaaaa"
    #質問詳細画面
    @question_data = Question.joins(:user).select("questions.*, users.*")
    p @question_data
    unless @question_data
      render_404
    end
    pp @hoge
  end
  def article
    @hoge = "fugaaaaa"
    pp @hoge
  end
end
