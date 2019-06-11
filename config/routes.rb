Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes, only: [:index, :new, :create, :show, :edit, :update]

  # get 'school_classes/:id', to: 'school_classes#show'

  resources :students, only: [:index, :new, :create, :show, :edit, :update]

  # get 'students/:id', to: 'students#show'

end
