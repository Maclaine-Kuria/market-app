require './config/environment'
require 'sinatra/base'
require 'sinatra/flash'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'app/views'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "wfm_market"
    register Sinatra::Flash
  end
