class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question == "I am going to work"
      @coach = "Great!"
    elsif @question =~ /\w\?/
      @coach = "Silly question, get dressed and go to work!"
    else
      @coach = "I don't care, get dressed and go to work!"
    end

  end

end
