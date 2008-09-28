ActionController::Routing::Routes.draw do |map|
  map.resources :people
  map.resources :contracts
  map.resources :organizations
  map.resources :projects
end
