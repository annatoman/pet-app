class PettsController < ApplicationController
    def index
        @petts = Pett.all
    end

    def show
        @pett = Pett.find_by(id: params[:id])
    end

    def new
        @pett = Pett.new
        render :new
    end

    def create
        @pett = Pett.create(
            name: params[:pett][:name],
            breed: params[:pett][:breed],
            image: params[:pett][:image]
        )
        redirect_to "/petts"
    end
end
