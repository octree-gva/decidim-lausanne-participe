# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

gem "decidim", git: "https://github.com/decidim/decidim.git", branch: "release/0.24-stable"

gem "decidim-conferences", git: "https://github.com/decidim/decidim.git", branch: "release/0.24-stable"
gem "decidim-decidim_awesome", "~> 0.7.2"
gem "decidim-socio_demographic_authorization_handler", git: "https://github.com/octree-gva/decidim-module-socio_demographic_authorization_handler.git", branch: "alt/decidim-lausa"
gem "decidim-term_customizer", git: "https://github.com/mainio/decidim-module-term_customizer", branch: "0.24-stable"
gem "decidim-verifications-simple_impersonation", git: "https://github.com/octree-gva/decidim-verifications-simple_impersonation", branch: "0.24-stable"

gem "bootsnap", "~> 1.5", ">= 1.5.1"
gem "puma", "~> 5.1", ">= 5.1.1"
gem "uglifier", "~> 4.2.0"
gem "rails", "~> 5.2.6"
gem 'sidekiq', '~> 6.4', '>= 6.4.1'
gem 'sidekiq-scheduler', "~> 3.2.2"
gem "hiredis", '~> 0.6.3'
gem "redis", ">= 3.2.0"
gem 'rack-attack', "~> 6.0"


group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri
  gem "decidim-dev", git: "https://github.com/decidim/decidim.git", branch: "release/0.24-stable"
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end

group :production do
  gem 'mini_racer', '~> 0.6.2'  
  gem "sprockets", "~> 3.7"
end