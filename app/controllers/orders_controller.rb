class OrdersController < ApplicationController

  def get
    p = permit_params
    val = UserService.authorize(p[:user_id],p[:authentication_token])
    if val['status'] == 403
      render json: {message: "forbidden", status:403}
    else
      orders = Order.where(user_id: p[:user_id])
      render json: {orders: orders}
    end

  end



  def permit_params
    params.permit(:user_id,:authentication_token)
  end
end