class MessagesController < ApplicationController
  def index
    messages = Message.all
    render :index
  end

  def show
    message = Message.find(params[:id])
  end

  def new
    message = Message.new 
  end

  def create
    message = Message.create!(message_params)
    redirect_to message_path(message)
  end

  private 

  def message_params
    params.require(:message).permit(:text, :conversation_id)
  end
end
