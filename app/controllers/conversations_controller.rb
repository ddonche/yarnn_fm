class ConversationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conversation, except: [:index]
  before_action :set_conversations, only: [:index, :show]
  before_action :check_participating!, except: [:index]

  def index
  end

  def show
    @message = Message.new
  end

  private

  def set_conversation
    @conversation = Conversation.find_by(id: params[:id])
  end
  
  def set_conversations
    @conversations = Conversation.participating(current_user).order('updated_at DESC').page(params[:page]).per(24)
  end

  def check_participating!
    redirect_to root_path unless @conversation && @conversation.participates?(current_user)
  end
end