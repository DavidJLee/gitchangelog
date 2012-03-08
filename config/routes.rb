Rails.application.routes.draw do

	get 'changelog' => 'gitchangelog#index'

end
