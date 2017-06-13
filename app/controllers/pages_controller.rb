class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "W E L C O M E"
  end

  def about
    @header = "A B O U T"
  end

  def contest
    @header = "C O N T E S T"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] == "please"
      render :secrets
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to welcome_url
    end
  end

end
