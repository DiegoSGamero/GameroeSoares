Rails.application.routes.draw do
  root to: "pages#home"
  get 'adjoining_owners/index'
  get 'adjoining_owners/show'
  get 'adjoining_owners/new'
  get 'adjoining_owners/create'
  get 'adjoining_owners/edit'
  get 'adjoining_owners/update'
  get 'adjoining_owners/destroy'
  get 'properties/index'
  get 'properties/show'
  get 'properties/new'
  get 'properties/create'
  get 'properties/edit'
  get 'properties/update'
  get 'properties/destroy'
  get 'contractors/index'
  get 'contractors/show'
  get 'contractors/new'
  get 'contractors/create'
  get 'contractors/edit'
  get 'contractors/update'
  get 'contractors/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
