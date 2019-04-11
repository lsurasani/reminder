Rails.application.routes.draw do
  root :to => 'messages#index'
  get 'messages/reply'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :messages do
    collection do
      post 'reply'
    end
  end

  get 'send_messages/send_daily'

end
