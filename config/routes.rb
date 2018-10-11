Rails.application.routes.draw do

	root to: "dashboard#index"

	resources :incomes
	resources :deliveries

end
