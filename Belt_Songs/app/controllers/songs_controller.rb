class SongsController < ApplicationController
  before_action :require_login
  def index
      @songs = Song.all
      @user = User.find(session[:user_id])
      @current_user = current_user
  end

  def new
  end

  def create
    @user = User.find(session[:user_id])
    new_song = Song.create(song_params.merge(user_id: @user.id))
    if new_song.valid?
      redirect_to "/songs"
    else
      flash[:notice] = new_song.errors.full_messages
      redirect_to "/songs"
    end
  end

 def show
    @user = User.find(session[:user_id])
    @song = Song.find(id = params[:id])
    @listeners = Listener.where("song_id = '#{params[:id]}'")
 
 end

  private
  def song_params
    params.require(:song).permit(:artist, :title)
  end

 
end
