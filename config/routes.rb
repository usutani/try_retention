Rails.application.routes.draw do
  resource :home, only: :show
  resource :retention, only: %i[ show update ]
  root "retentions#show"
end
