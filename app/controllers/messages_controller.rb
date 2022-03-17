class MessagesController < ApplicationController
  before_action :set_message, only: %i[destroy edit]
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(message_params)
  end

  def edit
    
  end

  def destroy
    @message.destroy!

    #redirect_to root_url, status: :see_other

  end

  


  private

  def message_params
    params.require(:message).permit(:content)
  end

  def set_message
    @message = Message.find(params[:id])
  end

end

  
  
