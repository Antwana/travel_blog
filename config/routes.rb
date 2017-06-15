Rails.application.routes.draw do
  get '/blogs/countries' => 'blogs#countries'
  resources :blogs do
    resources :comments, except: [:index, :show]
  end

  post ':blog_id/comments' => 'comments#create'
  get 'comments/new' => 'comments#new'
  get '/blogs/:blog_id/comments/' => 'comments#show'
  get 'index' => 'blogs#index'
  post 'create' => 'blogs#create'
  get 'new' => 'blogs#new'
  get 'edit' => 'blogs#edit'
  get '/blogs/:id' => 'blogs#show'


  # get 'index' => 'blogs#index'
  # post 'create' => 'blogs#create'
  # get 'new' => 'blogs#new'
  # get '/blogs/:id' => 'blogs#show'
  # post ':blog_id/comments' => 'comments#create'
  # get 'comments/new' => 'comments#new'
  # get 'edit' => 'blogs#edit'
  # get '/blogs/:blog_id/comments/:id' => 'comments#show'


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
