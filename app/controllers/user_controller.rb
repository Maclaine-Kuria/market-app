require "byebug"
class UserController < ApplicationController

    get '/signup' do
        if !logged_in?
          erb :'user/signup'
        else
          redirect to '/orders'
        end
      end

    post '/signup' do 
      @user = User.find_by(:username => params[:username])
        if @user
          redirect to '/login'
        else
          @user = User.new(user_params)
            if @user.save
              session[:user_id] = @user.id
              redirect to '/orders'
            else
              redirect to '/signup'
            end
          end
        end