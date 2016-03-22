class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.deliver
      redirect_to root_path
      flash[:success] = "Message Sent!"
    else
      render :new
      flash.now[:alert] = "Message Failed :("
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message, :nickname)
  end
end
