class UsersController < ApplicationController
    def new
        user = session[:user_id]
        binding.pry
        if user then
            @user= User.new
    
        end
    
    end
    def view
        @user = User.find(params[:id])
    end
    
    def create
        @user=User.new(user_params)
        if @user.save
            
                flash[:notice]= "You have created a new user!"
                redirect_to freeshelf_view_path(@user.id)
        else
                render 'new'
        end
    end
    def destroy
        
    end

    def signup

        @signup=User.new

    end
    def save
        @signup=User.new(user_params)
        if @signup.save
                flash[:notice]= "Congratulations on you new account!"
                redirect_to freeshelf_view_path(@signup)
        else
                render 'new'
        end
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :email, :user_name, :usertype, :password, :password_confirmation)
      end
end
