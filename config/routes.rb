Rails.application.routes.draw do
  resources :tasks do
    member do
      get :toggle_status
    end
  end
  root 'tasks#index'
  get 'incomplete_task', to: 'tasks#incomplete', as: 'incomplete_task'
  get 'complete_task', to: 'tasks#complete', as: 'complete_task'
  get 'tasks/:id/toggle_status', to: 'tasks#toggle_status', as: 'toggle_status'

end
