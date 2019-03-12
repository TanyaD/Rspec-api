Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, path:"", defaults: {format: :json} do
    namespace :v1 do
        post "sign_up" => "registrations#create"
    end
  end
end
