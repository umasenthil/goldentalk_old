class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    logger.info "Showing user"
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end

  def show
    logger.info "Showing user"
    @user = User.find(params[:id])
  end

  def call
    head :ok
    logger.info "Calling user"
  end

end

private
    def user_params
        params.require(:user).permit(:name, :skypeid)
    end
