class ActorsController < ApplicationController
	def index
		@actors = Actor.all
	end

	def new
		@actor = Actor.new
	end

	def create
		@actor = Actor.new(actor_params)
	    if @actor.save
	      flash[:notice] = 'The actor have been saved'
	      redirect_to actors_path
	    else
	      flash[:alert] = 'There was an error , try again'
	      render :new
	    end
	end

	private
  	def actor_params
      params.require(:actor).permit(:name, :bio, :birth_day, :birth_place, :image_url, :alive, :death_date, :death_place)
    end
end
