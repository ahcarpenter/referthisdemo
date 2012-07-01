ReferThisDemo::Application.routes.draw do
  match '/:locale' => 'main#index'
  root :to => 'main#index'
end