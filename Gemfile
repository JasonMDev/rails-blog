source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails',        				'4.2.4'
gem 'bcrypt',								'3.1.10' 
gem 'bootstrap-sass', 			'3.3.5.1'
gem 'sass-rails',   				'5.0.4'
gem 'uglifier',     				'2.7.2'
gem 'coffee-rails', 				'4.1.1'
gem 'jquery-rails', 				'4.0.5'
gem 'turbolinks',   				'2.5.3'
gem 'jbuilder',     				'2.3.2'
gem 'devise',               '3.5.6'
gem 'cancancan',          '~> 1.10'
gem 'will_paginate',     '~> 3.0.6'
gem 'sdoc',         				'0.4.1', group: :doc

# Development Environment
# => $ bundle install --without production
group :development, :test do
  gem 'sqlite3',     				'1.3.11'
  gem 'byebug',      				'8.0.0'
  gem 'web-console', 				'2.2.1'
  gem 'spring',      				'1.4.0'
end

# Test Environment
group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

# Production Environment
#$ bundle install --without production
group :production do
  gem 'pg',             		'0.18.3'
  gem 'rails_12factor', 		'0.0.3'
  gem 'puma',								'2.15.2'	
end


