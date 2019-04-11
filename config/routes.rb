Rails.application.routes.draw do

	resources :schools do
		resources :grades do
			resources :classschools do
				resources :students do
					        resources :teachers
				end
			end
		end
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
