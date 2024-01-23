class PagesController < ApplicationController
  def home
  end

  def contact
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
  end
end
