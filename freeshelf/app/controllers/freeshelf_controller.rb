class FreeshelfController < ApplicationController
  def index
  end

  def view
    @user = User.find(params[:id])
    @books = @user.books
    
  end
end
