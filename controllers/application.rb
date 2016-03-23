class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
     :adapter => 'postgresql',
     :database => 'sinatra_coupons',
    )

    set :views, File.expand_path('../../views', __FILE__)
      set :public_dir, File.expand_path('../../public', __FILE__)

      get '/' do
        erb :login
      end

    end
