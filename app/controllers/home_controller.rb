class HomeController < ApplicationController
  def index
    render
  end
  def about 
  end
  def profile
    @user = current_user
    @photos = @user.photos
  end
  
end
