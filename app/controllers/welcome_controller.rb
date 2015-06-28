class WelcomeController < ApplicationController
  def index
    @services = Service.limit(4);
  end
end
