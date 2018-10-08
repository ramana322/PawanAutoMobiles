Rails.application.routes.draw do

  	devise_for :users
	

	root to: "dashboard#index"
	get 'expenditure', to: 'expenditure#expenditure'
    get 'category', to: 'category#category'

    resources :expenditures


	resources :incomes
	resources :deliveries

end
