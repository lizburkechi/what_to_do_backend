class ActivitiesController < ApplicationController

    def index
        @activities = Activity.all
        render json: @activities      
    end

    def show
        @activity = Activity.find_by(id: params[:id])
        render json: @activity
    end
    
    private 

    def activity_params
        params.require(:activity).permit(:id, :activity_name, :category, :participants, :link)
    end

end
