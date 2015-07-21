class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all  #grab all users in the database
  end
  
  def show
    @user = User.find( params[:id] )
  end
end
