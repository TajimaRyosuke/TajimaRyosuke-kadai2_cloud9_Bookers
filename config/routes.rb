Rails.application.routes.draw do
  get '/books' =>'books#index', as:'books'
  get '/books/:id' =>'books#show', as:'book'
  get '/books' =>'books#new'
  post '/books' => 'books#create'
  get '/books/:id/edit' =>'books#edit', as:'book_edit'
  patch '/books/:id' => 'books#update'
  delete '/books' => 'books#destroy'
  root :to =>'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
