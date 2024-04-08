Rails.application.routes.draw do

  scope module: :public do
    root to: 'homes#top'
    get 'about' => 'homes#about'
    get 'ideal' => 'homes#ideal'
  end

  namespace :admin do
    root to: "homes#top"
  end

  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admins, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
