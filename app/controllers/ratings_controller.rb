class RatingsController < ApplicationController

    def create 
        @rating = current_user.ratings.build(coworker_id: params[:coworker_id])
        if @rating.save
            flash[:notice] = "Successfully Posted Rating!"
            redirect_to root_url
        else
            flash[:error] = "Unable to Post Rating!"

            render action: :new
        end
    end

    def destroy 
        @rating = Rating.find(params[:id])
        @rating.destroy
        flash[:notice] = "Successfully Deleted Rating!"
        redirect_to root_url
    end

end
