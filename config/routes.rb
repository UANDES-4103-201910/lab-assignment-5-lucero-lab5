Rails.application.routes.draw do
  get 'orders/create'
  get 'orders/destroy'
  get 'orders/update'

  get 'ticket_zones/create'
  get 'ticket_zones/destroy'
  get 'ticket_zones/update'

  get 'ticket_types/create'
  get 'ticket_types/destroy'
  get 'ticket_types/update'

  get 'tickets/create'
  get 'tickets/destroy'
  get 'tickets/update'

  get 'event_venues/create'
  get 'event_venues/destroy'
  get 'event_venues/update'

  get 'events/create' => 'users#create'
  get 'events/destroy' => 'users#destroy'
  get 'events/update' => 'users#update'

  get 'users/create' => 'users#create'
  get 'users/destroy' => 'users#destroy'
  get 'users/update' => 'users#update'

  resources :ticket_types do
    resources :tickets
  end

  resources :events do
    member do
      get 'upcoming_events'
    end
  end

  resources :user do
    member do
      get 'user_with_most_tickets'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
