Rails.application.routes.draw do
  

  mount Thredded::Engine => '/forum'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    root to: 'pages#home'

    get 'home', to: 'pages#home', as: 'home'
	get 'feedingtips', to:'pages#feedingtips', as: 'feedingtips'
	get 'etiquettetips',to:'pages#etiquettetips',as:'etiquettetips'

    #------- EVENT ------------
    get 'events', to: 'events#index', as: 'events'
    get 'events/edit', to: 'events#edit'
    post 'events', to: 'events#create'
    get 'events/new', to: 'events#new', as: 'new_event'
    get 'events/:id', to: 'events#show', as: 'event'
    get 'events/:id/edit', to: 'events#edit', as: 'edit_event'
    patch 'events/:id', to: 'events#update'
    put 'events/:id', to: 'events#update'
    delete 'events/:id', to: 'events#destroy'

  get 'users', to: 'users#index', as: 'users'
  get 'users/new', to: 'users#new', as: 'new_user'
  post 'users', to: 'users#create'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  get 'users/:id/edit2', to: 'users#edit2', as: 'edit2_user'
  get 'users/:user_id/pets/new', to: 'pets#new', as: 'new_pet'
  get 'users/:user_id/pictures/new', to: 'pictures#new', as: 'new_picture'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'
  put 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'
  get 'users/:id/home', to: 'users#home', as: 'user_home'

    get 'restaurants', to: 'restaurants#index', as: 'restaurants_index'
    post 'restaurants', to: 'restaurants#create', as: 'restaurants'
    get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
    get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
    get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
    patch 'restaurants/:id', to: 'restaurants#update'
    put 'restaurants/:id', to: 'restaurants#update'
    delete 'restaurants/:id', to: 'restaurants#destroy'


    get 'parks', to: 'parks#index', as: 'parks_index'
    post 'parks', to: 'parks#create', as: 'parks'
    get 'parks/new', to: 'parks#new', as: 'new_park'
    get 'parks/:id', to: 'parks#show', as: 'park'
    get 'parks/:id/edit', to: 'parks#edit', as: 'edit_park'
    patch 'parks/:id', to: 'parks#update'
    put 'parks/:id', to: 'parks#update'
    delete 'parks/:id', to: 'parks#destroy'

    get 'stores', to: 'stores#index', as: 'stores_index'
    post 'stores', to: 'stores#create', as: 'stores'
    get 'stores/new', to: 'stores#new', as: 'new_store'
    get 'stores/:id', to: 'stores#show', as: 'store'
    get 'stores/:id/edit', to: 'stores#edit', as: 'edit_store'
    patch 'stores/:id', to: 'stores#update'
    put 'stores/:id', to: 'stores#update'
    delete 'stores/:id', to: 'stores#destroy'

    get 'vets', to: 'vets#index', as: 'vets_index'
    post 'vets', to: 'vets#create', as: 'vets'
    get 'vets/new', to: 'vets#new', as: 'new_vet'
	  get 'vets/:id', to: 'vets#show', as: 'vet'
    get 'vets/:id/edit', to: 'vets#edit', as: 'edit_vet'
    patch 'vets/:id', to: 'vets#update'
    put 'vets/:id', to: 'vets#update'
    delete 'vets/:id', to: 'vets#destroy'

    get 'pets', to: 'pets#index', as: 'pets_index'
    post 'users/:user_id/pets', to: 'pets#create', as: 'pets'
    
    get 'pets/:id/edit', to: 'pets#edit', as: 'edit_pet'
    patch 'pets/:id', to: 'pets#update'
    put 'pets/:id', to: 'pets#update'
    delete 'pets/:id', to: 'pets#destroy'
    get 'pets/:id', to: 'pets#show', as: 'pet'

    get 'pictures', to: 'pictures#index', as: 'pictures_index'
    post 'users/:user_id/pictures', to: 'pictures#create', as: 'pictures'
    
    get 'pictures/:id/edit', to: 'pictures#edit', as: 'edit_picture'
    patch 'pictures/:id', to: 'pictures#update'
    put 'pictures/:id', to: 'pictures#update'
    delete 'pictures/:id', to: 'pictures#destroy'
    get 'pictures/:id', to: 'pictures#show', as: 'picture'

end
