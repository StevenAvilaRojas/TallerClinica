Rails.application.routes.draw do
  resources :cita
  resources :consultorios
  resources :pacientes
  resources :medicos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
