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
    @conversation.save
    # @conversation_upcase = ConversationTitleUpcase.call(@conversation.title)
    # Services::ConversationTitleUpcase.call(title: @conversation.title)
    redirect_to conversation_path(@conversation)
  end

  def edit
    @conversation = Conversation.find(params[:id])
  end

  def update
    @conversation = Conversation.find(params[:id])
    if @conversation.update(conversation_params)
      redirect_to conversation_path(@conversation)
    else
      flash[:errors] = @conversation.errors.full_messages
      redirect_to edit_conversation_path
    end
  end

  def destroy
    @conversation = Conversation.find(params[:id])
    @conversation.destroy
    redirect_to conversations_path
  end

  private

  def conversation_params
    params.require(:conversation).permit(:title, :start_date)
  end
end
