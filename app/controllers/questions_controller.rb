class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:question]
      if params[:question] == "I am going to work right now!" || params[:question] == "I AM GOING TO WORK RIGHT NOW!"
        return @answer = ("GREAT!")
      elsif params[:question].end_with?("?")
         return @answer = "Silly question, get dressed and go to work!"
      else
        return @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
