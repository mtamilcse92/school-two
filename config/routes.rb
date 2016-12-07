Rails.application.routes.draw do

	resources :subjects do
    resources :topics
  end
	root to: "subjects#index"
end
