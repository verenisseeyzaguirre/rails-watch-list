Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, except: [:edit, :update, :destroy] do
   # /lists/
    collection do
      # 'lists/top' otra ruta
      # get :top
    end
    member do
      # 'lists/1/chef'
      # get :chef
    end
    # lists/1/bookmarks/new
    resources :bookmarks, only: [:new, :create]
  end
  # /bookmarks/:id
  resources :bookmarks, only: [:destroy]
end
