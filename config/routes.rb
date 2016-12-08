Rails.application.routes.draw do
  resources :subjects
  resources :topics
  # put '/subjects/:id' => "subjects#update", as: 'subject_update'

  # resources :subjects do
  #   resources :topics, except: [:index], controller: 'subjects/topics'
  # end
	root to: "subjects#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
