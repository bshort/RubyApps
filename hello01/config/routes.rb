Rails.application.routes.draw do
  get 'foo/index'

#  get 'hello/index' => 'hello#index'
  get 'hello' => 'hello#index'
  get 'bar' => 'foo#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
