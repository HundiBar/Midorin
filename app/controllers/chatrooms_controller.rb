class ChatroomsController < ApplicationController
  def index
    @query = params[:query]
    if @query && @query.present?
      @chatrooms = policy_scope(Chatroom).search_chatroom(params[:query]).order(created_at: :asc)
    else
      @chatrooms = policy_scope(Chatroom).order(created_at: :asc)
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
  end

  def new
    @chatname = Chatroom.chatroom_refresh
    @chatroom = Chatroom.new
    authorize @chatroom
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    authorize @chatroom
    if @chatroom.save
      redirect_to chatrooms_path
    else
      render "chatrooms"
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:title)
  end
end
