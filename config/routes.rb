Spree::Core::Engine.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v2 do
      resource :braintree_client_token, only: :create, controller: 'braintree_client_token'
    end
  end
end
