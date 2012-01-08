Website::Application.routes.draw do
  root :to => 'homepage#index'
  
  match '/email_submit', to: "homepage#email_submit", as: 'email_submit'
end
