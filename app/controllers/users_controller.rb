class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @activities = @user.activities.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Wordlist!"
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
