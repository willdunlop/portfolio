class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Your message has been sent! I will be sure to get back to you as soon as possible'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
