class ActorsController < ApplicationController
	def index
		@actors = Actor.all
	end

	def new
		@actor = Actor.new
	end

	private
  	def actor_params
      params.require(:actor).permit(:name, :url, :description, :image)
    end
end
