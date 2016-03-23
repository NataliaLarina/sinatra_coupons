class CouponController < ApplicationController

 @new_coupon =""

 get '/' do
   erb :coupon
 end

get '/all' do
  @all = Coupon.all

  erb :allcoupons

end

 post '/' do
   @new_coupon = Coupon.create({
     :title => params[:title],
     :description => params[:description],
     :product => params[:product],
     :discount_price => params[:discount_price],
     :expiration_date => params[:expiration_date]
     }).to_json
 end

end
