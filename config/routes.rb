Rails.application.routes.draw do

  devise_for :users,
             controllers: {
                 passwords: 'user/passwords',
                 registrations: 'user/registrations',
                 sessions: 'user/sessions',
                 confirmations: 'user/confirmations',
                 unlocks: 'user/unlocks'
             },
             path: 'user',
             path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 password: 'password',
                 confirmation: 'confirm',
                 unlock: 'reset',
                 registration: 'register',
                 sign_up: 'signup'
             }

  root to: 'referrers#index'

  #TODO: Usuarios pueden registrarse automaticamente sin autorizacion del administrador. Arreglar.

end
