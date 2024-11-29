Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  
  get "up" => "rails/health#show", as: :rails_health_check
  post '/datarouter/api/v1/public/data', to: 'data_router#public_data'
  get '/lightswitch/api/service/fortnite/status', to: 'lightswitch#fortnite_status'

  
  get '/lightswitch/api/service/bulk/status', to: 'lightswitch#bulk_status'
  post '/fortnite/api/game/v2/tryPlayOnPlatform/account/:accountId', to: 'fortnite#try_play_on_platform'
  get '/fortnite/api/game/v2/enabled_features', to: 'fortnite#enabled_features'
  get '/fortnite/api/game/v2/privacy/account/:accountId', to: 'fortnite#privacy'

  
  get '/account/api/public/account/:accountId/externalAuths', to: 'account#external_auths'
  get '/account/api/public/account', to: 'account#public_account'
  get '/account/api/public/account/:accountId', to: 'account#account_details'

  
  get '/content-controls/:accountId', to: 'content_controls#index'

  
  post '/api/v1/user/setting', to: 'user_settings#update'

 
  get '/socialban/api/public/v1/:accountId', to: 'socialban#index'

  
  get '/presence/api/v1/_/:accountId/settings/subscriptions', to: 'presence#subscriptions'

  post '/account/api/oauth/token', to: 'oauth#token'
  post '/account/api/oauth/verify', to: 'oauth#verify'
  delete '/account/api/oauth/sessions/kill', to: 'oauth#kill_session'
  delete '/account/api/oauth/sessions/kill/:token', to: 'oauth#kill_specific_session'
  get '/fortnite/api/cloudstorage/system', to: 'cloud_storage#system'
  get '/fortnite/api/cloudstorage/user/:accountId', to: 'cloud_storage#user'
  put '/fortnite/api/cloudstorage/user/:accountId/:fileName', to: 'cloud_storage#upload_file'
  get '/content/api/pages/fortnite-game', to: 'content#fortnite_game'
   get '/fortnite/api/storefront/v2/keychain', to: 'storefront#keychain'
       post '/fortnite/api/game/v2/profile/:accountId/client/:operation', to: 'profile#client_operation'
       get '/fortnite/api/v2/versioncheck', to: 'fortnite#version_check'
       get '/fortnite/api/v2/versioncheck/:version', to: 'fortnite#version_check_with_version'
       get '/fortnite/api/calendar/v1/timeline', to: 'fortnite#timeline'
       get '/waitingroom/api/waitingroom', to: 'waitingroom#waitingroom'

  
end
