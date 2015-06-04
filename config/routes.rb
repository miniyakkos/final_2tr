Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'users#index'
   get 'users/signature' => 'users#signature'
   get '/questions' => 'questions#index'
   post '/questions' => 'questions#create'
   get '/questions/:id/answers' => 'answers#show', as: 'answers'
   post '/questions/:id/answers' => 'answers#create'
   # get '/questions/search' => 'questions#search', as: 'questions_search'
   get '/students' => 'users#students', as: 'students'
   get '/tutors' => 'users#tutors', as: 'tutors'
   get '/video' => 'users#video'
   post '/users/:id/reviews' => 'reviews#create'
   get '/profile/:id' => 'users#show', as: 'profile'
   get '/curriculums/ruby' => 'curriculums#ruby', as: 'curriculums_ruby'
   get '/curriculums/jquery' => 'curriculums#jquery', as: 'curriculums_jquery'
   get '/curriculums/angular' => 'curriculums#angular', as: 'curriculums_angular'
   get '/curriculums/sql' => 'curriculums#sql', as: 'curriculums_sql'
   get '/curriculums/git' => 'curriculums#git', as: 'curriculums_git'
    get '/curriculums/subl' => 'curriculums#subl', as: 'curriculums_subl'
   get '/users/:id/invite' => 'users#invite'



  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
