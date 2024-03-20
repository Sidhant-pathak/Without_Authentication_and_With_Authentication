class PagesController < ApplicationController
  skip_before_action :authenticate_request

  def home
    render json: { message: 'Welcome to the home page!'}
  end

  def about
    render json: { message: 'About us page'}
  end
end
