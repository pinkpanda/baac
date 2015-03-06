Rails.application.routes.draw do
  resources :addresses

  resources :cities

  resources :departments

  resources :vehicules

  resources :accidents
  resources :agglomerations
  resources :assignments
  resources :atmoshperes
  resources :car_categories
  resources :collisions
  resources :infrastructures
  resources :insurances
  resources :intersections
  resources :lanes
  resources :lights
  resources :locations
  resources :memberships
  resources :organisms
  resources :plans
  resources :profiles
  resources :road_categories
  resources :traffics
  resources :zones
end
