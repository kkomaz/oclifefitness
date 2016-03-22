class WelcomeController < ApplicationController
  def index
    @services = Service.limit(4)
    @contact = Contact.new
  end
end
