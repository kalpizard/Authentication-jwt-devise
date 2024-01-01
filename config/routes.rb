Rails.application.routes.draw do
  # Otras rutas...

  get 'current_user', to: 'current_user#index'

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  }, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Cambia el nombre de la ruta personalizada a, 'signup_page'
  get '/signup', to: 'users/registrations#new', as: 'signup_page'

  # Otras rutas...
end
