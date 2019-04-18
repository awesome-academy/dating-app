class ConversationsController < ApplicationController
  def create
    @conversation = Conversation.get(current_user.id, params[:user_id])

    add_to_conversations unless conversated?
    redirect_to conversation_path(@conversation)
    # respond_to do |format|
    #   format.html {render "show"}
    #   format.js
    # end
  end

  def show
    @conversation = Conversation.find_by(recipient_id: params[:id])
    @message = Message.new
  end

  def close
    @conversation = Conversation.find_by(params[:id])

    session[:conversations].delete(@conversation.id)

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def add_to_conversations
    session[:conversations] ||= []
    session[:conversations] << @conversation.id
  end

  def conversated?
    session[:conversations].include?(@conversation.id)
  end
end
