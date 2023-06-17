Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope 'api' do
    scope 'posts' do
      get '', to: 'posts#index'
      get ':id', to: 'posts#show'
      post 'create', to: 'posts#create'
      patch 'update/:id', to: 'posts#update'
      delete 'delete/:id', to: 'posts#delete'
    end

    scope 'categories' do
      get '', to: 'categories#index'
      get ':id', to: 'categories#show'
      post 'create', to: 'categories#create'
      patch 'update/:id', to: 'categories#update'
      delete 'delete/:id', to: 'categories#delete'
    end
  end
end