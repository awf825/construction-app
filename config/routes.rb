Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      resource :movies
      resources :procurables
      get :index_by_phase_id, to: 'procurables#index_by_phase_id'
      resources :phases
      get :index_by_project_id, to: 'phases#index_by_project_id'
      resources :projects
    end
  end
end