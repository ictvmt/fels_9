class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @activities = @user.activities.paginate(page: params[:page])
  end

  def new
  end

  def create
    
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
