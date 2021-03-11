class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def new
    @conversation = Conversation.new 
  end

  def create
    @conversation = Conversation.create!(conversation_params)
    redirect_to conversation_path(conversation)
  end

  def edit
    @conversation = Conversation.find(params[:id])
  end

  def update
  end

  def destroy
    conversation = Conversation.find(params[:id])
    conversation.destroy
    redirect_to conversations_path(conversations)
  end

  private

  def conversation_params
    params.require(:conversation).permit(:title, :start_date)
  end
end
