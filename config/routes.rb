Rails.application.routes.draw do

  resources :users, only: [:show] do
    put '/add-follower' => 'user#add_follower', as: :add_follower
    #post '/down-vote' => 'votes#down_vote', as: :down_vote
  end

  root to: 'user#show'
end
