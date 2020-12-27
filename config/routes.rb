Rails.application.routes.draw do
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'post#index'

get 'zayavka' => 'zayavka#zayavka'
get 'thanks' => 'thanks#thanks'
get 'slovar' => 'slovar#slovar'
get 'clearslovar' => 'clearslovar#clearslovar'
get 'test' => 'tests#index'
get '/tests/new' => 'tests#new'
get '/tests/:id' => 'tests#showtest'
get '/deltest' => 'cleartest#index'


  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get    'logout'  => 'sessions#destroy'


resources :zayavka
resources :slovar
resources :tests
resources :users
end
