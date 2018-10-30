class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      ActionCable.server.broadcast 'messages_channel', message: "<article><span>#{@message.user_id}:</span><span>#{@message.content}</span></article>"
      head :ok
    else
      # return error message to Actioncable
    end
  end

  private

  def message_params
    params.permit(:content, :user_id)
  end
end
