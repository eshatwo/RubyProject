class ListenerController < ApplicationController

    def show
        @user = User.find(params[:id])
        @songs = Listener.where(user:@user)
    end

    def create
        Listener.create(user_id: params[:user_id], song_id: params[:song_id])
        redirect_to "/songs"
      end
end
