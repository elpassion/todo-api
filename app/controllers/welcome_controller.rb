class WelcomeController < ApplicationController
  def page
    render json: { message: 'Welcome' }
  end
end
