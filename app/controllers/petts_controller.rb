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

    def edit
        @pett = Pett.find_by(id: params[:id])
        render :edit
    end

    def update
        @pett = Pett.find_by(id: params[:id])
        @pett.update(
            name: params[:pett][:name],
            image: params[:pett][:image]
        )
        redirect_to "/petts"
    end

end
