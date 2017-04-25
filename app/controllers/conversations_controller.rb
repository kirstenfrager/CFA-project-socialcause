class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:destroy]
  skip_before_action :authenticate_user!
  skip_before_action :authenticate_influencer!

  def index
    @users = User.all
    @conversations = Conversation.all
    # @messages = @conversation.messages
  end

  # GET /Conversation/new
  def new
    @conversation = Conversation.create!(:sender_id => current_user.id, :recipient_id => 1)
    redirect_to conversation_messages_path(@conversation)
  end

  def create
#    if Conversation.between(params[:sender_id],params[:recipient_id]).present?
#      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
#    else
      @conversation = Conversation.create!(conversation_params)
#    end
    redirect_to conversation_messages_path(@conversation)
  end

  def destroy
    @conversation.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Conversation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def conversation_params
      params.permit(:sender_id, :recipient_id)
    end

    def set_conversation
      @conversation = Conversation.find(params[:id])
    end
end
