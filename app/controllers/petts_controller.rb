class PettsController < ApplicationController
    def index
        @petts = Pett.all
    end

    def show
        @pett = Pett.find_by(id: params[:id])
    end
end
