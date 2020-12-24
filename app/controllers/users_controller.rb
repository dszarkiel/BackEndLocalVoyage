class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by_id(params[:id])
        render json: user.to_json(include: [:destinations], except: [:created_at, :updated_at])
    end

    def create
        user = User.new(user_params)
        if user.save 
            render json: user, except: [:created_at, :updated_at]
        else 
            render json: {error: "Something went wrong, cannot log user."}
        end
    end
    
    def update
        user = User.find_by_id(params[:id])
        if user.update(user_params)
            render json: user
        else 
            render json: {error: "Something went wrong, cannot update user."}
        end
    end

    def destroy
        user = User.find_by_id(params[:id])
        if user.destroy
            render json: user
        else
            render json: {error: "Something went wrong, cannot delete user."}
        end
    end

    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email)
    end

end
