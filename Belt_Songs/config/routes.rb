Rails.application.routes.draw do
  root "sessions#new"

  get 'sessions/new'
  post 'sessions/login'
  get 'sessions/logout'
  post 'users/create'
  
  resources :users
  resources :songs
  resources :sessions

  get '/listener/:user_id/songs/:song_id' => 'listener#create'

  get 'songs/show/:id' => 'songs#show'
  post 'songs/add'

  # get 'users/:id' => 'lists#show'
  # post 'lists/add'

end

# Prefix Verb   URI Pattern                                 Controller#Action
#         root GET    /                                           sessions#new
# sessions_new GET    /sessions/new(.:format)                     sessions#new
#  songs_index GET    /songs/index(.:format)                      songs#index
#        users GET    /users(.:format)                            users#index
#              POST   /users(.:format)                            users#create
#     new_user GET    /users/new(.:format)                        users#new
#    edit_user GET    /users/:id/edit(.:format)                   users#edit
#         user GET    /users/:id(.:format)                        users#show
#              PATCH  /users/:id(.:format)                        users#update
#              PUT    /users/:id(.:format)                        users#update
#              DELETE /users/:id(.:format)                        users#destroy
#        songs GET    /songs(.:format)                            songs#index
#              POST   /songs(.:format)                            songs#create
#     new_song GET    /songs/new(.:format)                        songs#new
#    edit_song GET    /songs/:id/edit(.:format)                   songs#edit
#         song GET    /songs/:id(.:format)                        songs#show
#              PATCH  /songs/:id(.:format)                        songs#update
#              PUT    /songs/:id(.:format)                        songs#update
#              DELETE /songs/:id(.:format)                        songs#destroy
#     sessions GET    /sessions(.:format)                         sessions#index
#              POST   /sessions(.:format)                         sessions#create
#  new_session GET    /sessions/new(.:format)                     sessions#new
# edit_session GET    /sessions/:id/edit(.:format)                sessions#edit
#      session GET    /sessions/:id(.:format)                     sessions#show
#              PATCH  /sessions/:id(.:format)                     sessions#update
#              PUT    /sessions/:id(.:format)                     sessions#update
#              DELETE /sessions/:id(.:format)                     sessions#destroy
#              GET    /listener/:user_id/songs/:song_id(.:format) listener#create
#        login GET    /login(.:format)                            user#index
#              POST   /login(.:format)                            songs#index
#       logout DELETE /logout(.:format)                           sessions#destroy
