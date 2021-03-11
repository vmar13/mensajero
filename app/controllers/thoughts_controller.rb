class ThoughtsController < ApplicationController
  def index
    thoughts = Thought.all
    render :index
  end

  def show
    thought = Thought.find(params[:id])
  end

  def new
    thought = Thought.new
  end

  def create
    thought = Thought.create!(thought_params)
    redirect_to thought_path(thought)
  end

  private 

  def thought_params
    params.require(:thought).permit(:text, :message_id)
  end
end
