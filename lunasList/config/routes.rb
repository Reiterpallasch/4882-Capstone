Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    root to: 'pages#home'

    get 'home', to: 'pages#home', as: 'home'


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


    get 'forums', to: 'forums#index', as: 'forums'
    get 'forums/edit', to: 'forums#edit'
    post 'forums', to: 'forums#create'
    get 'forums/new', to: 'forums#new', as: 'new_forum'
    get 'forums/:id', to: 'forums#show', as: 'forum'
    get 'forums/:id/edit', to: 'forums#edit', as: 'edit_forum'
    patch 'forums/:id', to: 'forums#update'
    put 'forums/:id', to: 'forums#update'
    delete 'forums/:id', to: 'forums#destroy'

    get 'topics', to: 'topics#index', as: 'topics'
    get 'topics/edit', to: 'topics#edit'
    post 'topics', to: 'topics#create'
    get 'topics/new', to: 'topics#new', as: 'new_topic'
    get 'topics/:id', to: 'topics#show', as: 'topic'
    get 'topics/:id/edit', to: 'topics#edit', as: 'edit_topic'
    patch 'topics/:id', to: 'topics#update'
    put 'topics/:id', to: 'topics#update'
    delete 'topics/:id', to: 'topics#destroy'
	
    get 'posts', to: 'posts#index', as: 'posts'
    get 'posts/edit', to: 'posts#edit'
    post 'posts', to: 'posts#create'
    get 'posts/new', to: 'posts#new', as: 'new_post'
    get 'posts/:id', to: 'posts#show', as: 'post'
    get 'posts/:id/edit', to: 'posts#edit', as: 'edit_post'
    patch 'posts/:id', to: 'posts#update'
    put 'posts/:id', to: 'posts#update'
    delete 'posts/:id', to: 'posts#destroy'

    get 'restaurants', to: 'restaurants#index', as: 'restaurants_index'
    post 'restaurants', to: 'restaurants#create', as: 'restaurants'
    get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
    get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
    patch 'restaurants/:id', to: 'restaurants#update', as: 'restaurant'
    put 'restaurants/:id', to: 'restaurants#update'
    delete 'restaurants/:id', to: 'restaurants#destroy'


    get 'parks', to: 'parks#index', as: 'parks_index'
    post 'parks', to: 'parks#create', as: 'parks'
    get 'parks/new', to: 'parks#new', as: 'new_park'
    get 'parks/:id/edit', to: 'parks#edit', as: 'edit_park'
    patch 'parks/:id', to: 'parks#update', as: 'park'
    put 'parks/:id', to: 'parks#update'
    delete 'parks/:id', to: 'parks#destroy'

    get 'stores', to: 'stores#index', as: 'stores_index'
    post 'stores', to: 'stores#create', as: 'stores'
    get 'stores/new', to: 'stores#new', as: 'new_store'
    get 'stores/:id/edit', to: 'stores#edit', as: 'edit_store'
    patch 'stores/:id', to: 'stores#update', as: 'store'
    put 'stores/:id', to: 'stores#update'
    delete 'stores/:id', to: 'stores#destroy'

    get 'vets', to: 'vets#index', as: 'vets_index'
    post 'vets', to: 'vets#create', as: 'vets'
    get 'vets/new', to: 'vets#new', as: 'new_vet'
    get 'vets/:id/edit', to: 'vets#edit', as: 'edit_vet'
    patch 'vets/:id', to: 'vets#update', as: 'vet'
    put 'vets/:id', to: 'vets#update'
    delete 'vets/:id', to: 'vets#destroy'

    get 'pets', to: 'pets#index', as: 'pets_index'
    post 'pets', to: 'pets#create', as: 'pets'
    get 'pets/new', to: 'pets#new', as: 'new_pet'
    get 'pets/:id/edit', to: 'pets#edit', as: 'edit_pet'
    patch 'pets/:id', to: 'pets#update'
    put 'pets/:id', to: 'pets#update'
    delete 'pets/:id', to: 'pets#destroy'
    get 'pets/:id', to: 'pets#show', as: 'pet'

end
