class UsersController < ApplicationController
  
  def show
    
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
