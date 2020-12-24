class DestinationsController < ApplicationController

    def index
        destinations = Destination.all
        render json: destinations, except: [:created_at, :updated_at]
    end

    def show
        destination = Destination.find_by_id(params[:id])
        render json: destination, except: [:created_at, :updated_at]
    end

    def create
        destination = Destination.new(desitination_params)
        if destination.save 
            render json: destination, except: [:created_at, :updated_at]
        else 
            render json: {error: "Something went wrong, cannot log destination."}
        end
    end
    
    def update
        destination = Destination.find_by_id(params[:id])
        if destination.update(desitination_params)
            render json: destination, except: [:created_at, :updated_at]
        else 
            render json: {error: "Something went wrong, cannot update destination."}
        end
    end

    def destroy
        destination = Destination.find_by_id(params[:id])
        if destination.destroy
            render json: destination, except: [:created_at, :updated_at]
        else
            render json: {error: "Something went wrong, cannot delete destination."}
        end
    end


    private

    def desitination_params
        params.require(:destination).permit(:name, :date_visited, :address, :category, :comment, :visited, :cost, :attendees, :rating, :user_id)
    end

end
