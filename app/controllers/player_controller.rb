class PlayerController < ApplicationController
    def show
        @room_id=params[:room_id]
    end
end
