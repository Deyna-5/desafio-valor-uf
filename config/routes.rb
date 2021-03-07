Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "uf/:id/:date", to: "api/uf_values#date"
  get "client/:name", to: "api/clients#clients"

end
