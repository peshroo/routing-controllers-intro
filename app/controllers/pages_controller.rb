class PagesController < ApplicationController

  def welcome
    @header = "W E L C O M E"
  end

  def about
    @header = "A B O U T"
  end

  def contest
    @header = "C O N T E S T"
  end

end
