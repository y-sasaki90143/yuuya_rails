Rails.application.routes.draw do

#読書カード２
    get 'books/index'
    get 'books', to: 'books#index'

    get 'books/add'
    post 'books/add'

    get 'books/:id', to: 'books#show'
    
    get 'books/edit'

#読書カード
    get 'cards/index'
    get 'cards', to: 'cards#index'

    get 'cards/add'
    post 'cards/add'
  
    get 'cards/:id', to: 'cards#show'

    get 'cards/edit/:id', to: 'cards#edit'
    patch 'cards/edit/:id', to: 'cards#edit'

    get 'cards/delete/:id', to: 'cards#delete'


#伝言板
  get 'dengonban', to: 'dengonban#index'
  post 'dengonban', to: 'dengonban#index'
  get 'dengonban/index'
  post 'dengonban/index'



#最初のやつ
    get '/helo/index'
    get 'helo', to: 'helo#index'
    get '/helo/other'
    
    post 'helo', to: 'helo#index'
    post '/helo/index'



#CRED
  get 'people/index'
  get 'people/add'
  post 'people/add', to: 'people#create'
  
    get 'people/find'
  post 'people/find'
  
  get 'people/edit/:id', to: 'people#edit'
  patch 'people/edit/:id', to: 'people#update'
  
  get '/people/delete/:id', to: "people#delete"
  
  get 'people', to: 'people#index'
  get 'people/:id', to: 'people#show'
  

  
  
  
end
