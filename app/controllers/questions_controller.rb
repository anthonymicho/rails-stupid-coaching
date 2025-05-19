# Controller for handling the questions logic (ask & answer).
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question].to_s
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.in?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
