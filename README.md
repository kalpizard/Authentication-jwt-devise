# Rails.application.routes.draw do

get 'current_user/index'

# devise_for :users

# # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.

# # Can be used by load balancers and uptime monitors to verify that the app is live.

# get "up" => "rails/health#show", as: :rails_health_check

# # Defines the root path route ("/")

# # root "posts#index"

# end

#######################################################################################

# Rails.application.routes.draw do

get 'current_user/index'

# get 'current_user', to: 'current_user#index'

# devise_for :users, path: '', path_names: {

# sign_in: 'login',

# sign_out: 'logout',

# registration: 'signup'

# },

# controllers: {

# sessions: 'users/sessions',

# registrations: 'users/registrations'

# }

# # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# # Defines the root path route ("/")

# # root "articles#index"

# end

###########################################

# devise_for :users, path: '', path_names: {

# sign_in: 'login',

# sign_out: 'logout',

# registration: 'signup'

# },

# controllers: {

# sessions: 'users/sessions',

# registrations: 'users/registrations'

# }

# config/routes.rb

# Rails.application.routes.draw do

get 'current_user/index'

# get 'current_user', to: 'current_user#index'

# devise_for :users, path: '', path_names: {

# sign_in: 'login',

# sign_out: 'logout',

# registration: 'signup'

# },

# controllers: {

# sessions: 'users/sessions',

# registrations: 'users/registrations'

# }

# # Define other routes if needed

# end

# Rails.application.routes.draw do

get 'current_user/index'

# get 'current_user', to: 'current_user#index'

# devise_for :users, path: '', path_names: {

# sign_in: 'login',

# sign_out: 'logout',

# registration: 'signup'

# },

# controllers: {

# sessions: 'users/sessions',

# registrations: 'users/registrations'

# }

# # Define other routes if needed

# end

##############################################

# Rails.application.routes.draw do

get 'current_user/index'

# get 'current_user', to: 'current_user#index'

# devise_for :users, path: '', path_names: {

# sign_in: 'login',

# sign_out: 'logout',

# registration: 'signup'

# },

# controllers: {

# sessions: 'users/sessions',

# registrations: 'users/registrations'

# }

# # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# # Defines the root path route ("/")

# # root "articles#index"

# end

# Rails.application.routes.draw do

get 'current_user/index'

# # Otras rutas...

# devise_for :users, path: '', path_names: {

# sign_in: 'login',

# sign_out: 'logout',

# registration: 'signup'

# }, controllers: {

# sessions: 'users/sessions',

# registrations: 'users/registrations'

# }

# # Otras rutas...

# end<

# config/routes.rb

# config/routes.rb

# Rails.application.routes.draw do

get 'current_user/index'

# # Otras rutas...

# devise_for :users, path: '', path_names: {

# sign_in: 'login',

# sign_out: 'logout',

# registration: 'signup'

# }, controllers: {

# sessions: 'users/sessions',

# registrations: 'users/registrations'

# }

# # Cambia el nombre de la ruta personalizada a 'signup_page'

# get '/signup', to: 'users/registrations#new', as: 'signup_page'

# # Otras rutas...

# end

# Rails.application.routes.draw do

get 'current_user/index'

# # Otras rutas...

# devise_for :users, path: '', path_names: {

# sign_in: 'login',

# sign_out: 'logout',

# registration: 'signup'

# }, controllers: {

# sessions: 'users/sessions',

# registrations: 'users/registrations'

# }

# # Cambia el nombre de la ruta personalizada a 'signup_page'

# get '/signup', to: 'users/registrations#new', as: 'signup_page'

# Otras rutas...

# config/routes.rb

# Rails.application.routes.draw do

get 'current_user/index'

# # ... otras rutas ...

# devise_for :users, controllers: {

# sessions: 'users/sessions',

# registrations: 'users/registrations'

# }

# # ... otras rutas ...

# end

# config/routes.rb

# config/routes.rb

# config/routes.rb

# #FUCIONA X2

# Rails.application.routes.draw do

# # ... Otras rutas ...

# get 'current_user', to: 'current_user#index'

# devise_for :users, path: '', path_names: {

# sign_in: 'login',

# sign_out: 'logout',

# registration: 'signup'

# }, controllers: {

# sessions: 'users/sessions',

# registrations: 'users/registrations'

# }

# # Cambia el nombre de la ruta personalizada a 'signup'

# get '/signup', to: 'users/registrations#new', as: 'signup_page'

# # ... Otras rutas ...

# end

Rails.application.routes.draw do

# ... Otras rutas ...

get 'current_user', to: 'current_user#index'

devise_for :users, path: '', path_names: {
sign_in: 'login',
sign_out: 'logout',
registration: 'signup'
}, controllers: {
sessions: 'users/sessions',
registrations: 'users/registrations'
}

# Cambia el nombre de la ruta personalizada a 'signup'

get '/signup', to: 'users/registrations#new', as: 'signup_page'

# ... Otras rutas ...

end
