class OrdersController < ApplicationController

    # index
    get '/orders' do
      redirect_if_not_logged_in
        @user = current_user
          @orders = @user.orders.all
          erb :'order/index'
    end