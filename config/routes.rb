Rails.application.routes.draw do
  resources :blogs do
    resources :comments, except: [:index]
  end
  get 'index' => 'blogs#index'
  post 'create' => 'blogs#create'
  get 'new' => 'blogs#new'
end
  #devise_for :users
  #root to: "blog#index"
#   resources :blogs do
#     resources :comments
#   end
#end



# Rails.application.routes.draw do
#   get 'comment/new'
#
#   get 'comment/edit'
#
#   get 'blog/index'
#
#   get 'blog/show'
#
#   get 'blog/edit'
#
#   get 'blog/create'
#
#
#
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
