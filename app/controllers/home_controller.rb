
class HomeController < ApplicationController
  before_action :authenticate_user! #add this line

  def index
    @user = User.find(current_user.id)
    @first_name = @user.first_name
  end
end
