class StaticPagesController < ApplicationController
  def home
    session[:conversations] ||= []

    @users = User.all.where.not(id: current_user)
    if user_signed_in?
      @conversations = Conversation.includes(:recipient, :messages)
    end
  end
end
