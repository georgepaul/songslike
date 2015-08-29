Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  # get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

get '/stream' => 'stream#stream', as: 'stream'


get '/generalstream' => 'stream#general', as: 'generalstream'

get '/friendlists' => 'stream#friendlists', as: 'friendlists'
get '/playlists' => 'stream#playlists', as: 'playlists'

get '/friendslist' => 'stream#friendslist', as: 'friendslist'
get '/searchyt/:q' => 'stream#searchyt', as: 'searchyt'
get '/searchplaylists/:q' => 'stream#searchplaylists', as: 'searchplaylists'

get '/addtoplaylist/:videoId/:playlistId' => 'stream#addtoplaylist', as: 'addtoplaylist'

get '/user/:id' => 'stream#user', as: 'user'
get '/playlist/:id' => 'stream#playlist', as: 'playlist'

get '/replayvalue' => 'stream#replay_value', as: 'replayvalue'
get '/listenedto' => 'stream#listened_to', as: 'listenedto'
get '/playcount' => 'stream#play_count', as: 'playcount'
get '/favorited' => 'stream#favorited', as: 'favorited'

get '/commentedon' => 'stream#commented_on', as: 'commentedon'

get '/quicklist' => 'stream#quick_play', as: 'quicklist'
get '/followuser' => 'stream#follow_user', as: 'followuser'
get '/followgroup' => 'stream#follow_group', as: 'followgroup'
get '/unfollowuser' => 'stream#unfollow_user', as: 'unfollowuser'
get '/unfollowgroup' => 'stream#unfollow_group', as: 'unfollowgroup'

get '/friend_activity' => 'stream#friend_activity', as: 'friendactivity'
get '/friend_favorites' => 'stream#friend_favorites', as: 'friendfavorites'

get '/user_details' => 'stream#user_details', as: 'userdetails'
get '/group_details' => 'stream#group_details', as: 'groupdetails'

get '/suggestsongtofriend' => 'stream#suggest_song_to_friend', as: 'suggestsongtofriend'
get '/suggestsongtogroup' => 'stream#suggest_song_to_group', as: 'suggestsongtogroup'

get '/everyonegroupstream' => 'stream#everyone_group_stream', as: 'everyonegroupstream'


get '/megroupstream' => 'stream#me_group_stream', as: 'megroupstream'

get '/suggestsearchedsongtofriend' => 'stream#suggest_searched_song_to_friend', as: 'suggestsearchedsongtofriend'
get '/suggestsearchedsongtogroup' => 'stream#suggest_searched_song_to_group', as: 'suggestsearchedsongtogroup'


get '/friendfilterplay' => 'stream#friend_filter_play', as: 'friendfilterplay'

get '/addfriendtofilter' => 'stream#add_friend_to_filter', as: 'addfriendtofilter'
get '/removefriendfromfilter' => 'stream#remove_friend_from_filter', as: 'removefriendfromfilter'

get '/login' => 'stream#login', as: 'login'


get '/listenedtosuggestion' => 'stream#listened_to_suggestion', as: 'listenedtosuggestion'


get '/favorite' => 'stream#favorite', as: 'favorite'
get '/searchyoutube' => 'stream#search_youtube', as: 'searchyoutube'
get '/searchsoundcloud' => 'stream#search_soundcloud', as: 'searchsoudncloud'
get '/recordexposure' => 'stream#record_exposure', as: 'recordexposure'



resources :stream
  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
