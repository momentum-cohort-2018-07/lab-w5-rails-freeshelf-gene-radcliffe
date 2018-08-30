class FreeshelfController < ApplicationController
  def index
    session[:userid]=0
  end

  def view
    @user = User.find(params[:id])
    @books = @user.books
    binding.pry
  end
end
