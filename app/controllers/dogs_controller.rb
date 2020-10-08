class DogsController < ApplicationController
    before_action :dog_find, only: :show
	
	def show	
	end

	def index
        @dogs = Dog.all 
	end

	private
		
	def dog_find
		@dog = Dog.find(params[:id])
	end
end
