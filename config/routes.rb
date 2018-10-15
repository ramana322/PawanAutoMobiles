Rails.application.routes.draw do

  	devise_for :users
	

	root to: "dashboard#index"
	resources :categories
    resources :expenditures


	resources :incomes
	resources :deliveries

end
