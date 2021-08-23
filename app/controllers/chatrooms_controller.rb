class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom).order(created_at: :asc)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    authorize @chatroom
    redirect_to chatrooms_path
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:title)
  end
end
