require 'sinatra/base'

require './controllers/application'
require './controllers/coupon'

require './models/account'
require './models/coupon'

map('/') {run ApplicationController}
map('/coupon') {run CouponController}
