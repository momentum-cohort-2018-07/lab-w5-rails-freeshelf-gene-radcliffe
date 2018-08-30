class SessionsController < ApplicationController
  def new
    
  end
  def view
    @user= User.find(params[:id])
  end
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
  
    if @user && @user.authenticate(params[:session][:password]) then

      flash[:notice]= "Succesfully Logged in!"
      session[:user_id] = @user.id
      redirect_to freeshelf_view_path(@user)
    
    else 
      flash[:notice]= "Log in failed, try again"

      render 'new'
    end
    
  end
  def destroy
      session[:user_id] = nil
      flash[:notice] = "You've been logged out"
      redirect_to login_path
  end 

  private 
  def userparams
      params.require(:users).permit(:email, :password)
  end
end
