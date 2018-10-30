class MessagesController < ApplicationController
  def index
    @message = Message.new
    @users = User.all
    @messages = MessageDecorator.decorate_collection(Message.all)
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      ActionCable.server.broadcast 'messages_channel',
                                   message: @message.decorate.formatted
      head :ok
    else
      flash[:error] = "Message not sent."
      head :unprocessible_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id)
  end
end
