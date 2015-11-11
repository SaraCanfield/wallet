class UsersController < ApplicationController
	  def new
	  	 @user = User.new
	  end

	  def show
	  	@user = User.find(params[:id])
	  end

	  def create
		    @user = User.new(user_params)
		    if @user.save
		    	#flash[:success] = "Welcome to MyWallet!"￼
		    	redirect_to root
		    else
		    render 'new'
		    end
	   end 

private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
   end

end