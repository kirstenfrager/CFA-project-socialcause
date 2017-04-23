class ConversationsController < ApplicationController

  def index
    @users = User.all
    @conversations = Conversation.all
  end

  def create
    if Conversation.between(params[:sender_id],params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
    redirect_to conversation_messages_path(@conversation)
  end

  def destroy
    @conversation.destroy
    respond_to do |format|
      format.html { redirect_to conversation, notice: 'Conversation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def conversation_params
      params.permit(:sender_id, :recipient_id)
    end
end
