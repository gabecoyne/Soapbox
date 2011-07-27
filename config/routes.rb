Rails.application.routes.draw do |map|

  devise_for :members 
  devise_for :users, :controllers => { :sessions => "devise/sessions" }

  # Resources
  resources :pages, :only => [:index, :show]

  namespace :admin do
    # Admin Resources
    resources :menus do
      resources :menu_items
    end  
    resources :gallery_images # for attachments views
    resources :galleries do      
      resources :gallery_images do
        get "image"
      end
    end
    resources :groups
    resources :analytics
    resources :versions
    resources :attachments
    resources :contents
    resources :comments
    resources :categories
    resources :files
    resources :plugins do
      collection do
        get  :order
      end
    end
    resources :redirects
    resources :settings
    resources :images
    resources :pages do
      get :link_list, :on => :collection
      collection do
        get  :tree
      end
    end
    resources :users
    root :to => "pages#root"
    # save list and tree order
    post "/save_order/:model" => "admin#save_order", :as => "save_order"
    post "/save_tree/:model"  => "admin#save_tree",  :as => "save_tree"
    get "/wysiwyg/:model/:id/:field"  => "admin#wysiwyg",  :as => "wysiwyg"
  end  
  
  get "sitemap.xml" => "sitemap#sitemap"
  
  root :to => "pages#show"
  
  get "*path" => "redirects#show"
  
  # match "*path" => "pages#show"
  
  # match "*path" => "static#error_404"
  
end
