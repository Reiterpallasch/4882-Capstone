Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    root to: 'pages#home'

    get 'home', to: 'pages#home', as: 'home'


    get 'vets', to: 'vets#index', as: 'vets_index'
    post 'vets', to: 'vets#create', as: 'vets'
    get 'vets/new', to: 'vets#new', as: 'new_vet'
    get 'vets/:id/edit', to: 'vets#edit', as: 'edit_vet'
    patch 'vets/:id', to: 'vets#update', as: 'vet'
    put 'vets/:id', to: 'vets#update'
    delete 'vets/:id', to: 'vets#destroy'
end
