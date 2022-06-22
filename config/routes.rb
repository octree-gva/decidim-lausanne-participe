# frozen_string_literal: true

require "sidekiq/web"

Rails.application.routes.draw do
  authenticate :admin do
    mount Sidekiq::Web => "/sidekiq"
  end
  mount Decidim::Core::Engine => "/"
  # mount Decidim::Map::Engine => '/map'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
