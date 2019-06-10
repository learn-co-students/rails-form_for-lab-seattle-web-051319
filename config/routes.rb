Rails.application.routes.draw do
  resources :school_classes, :students, only: [:index, :show, :new, :create, :edit, :update]
end
