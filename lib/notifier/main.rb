# frozen_string_literal: true

# require 'notifier/check_price'
# require 'notifier/fetch_price'
# class Main
#   def call(ticker, boundary)
#     price = FetchPrice.new.call(ticker)
#     CheckPrice.new.call(price, boundary)
#   end
# end

# rewritten using a container
require 'import'
class Main
  include Import['notifier.check_price', 'notifier.fetch_price']

  def call(ticker, price)
    check_price.call(fetch_price.call(ticker), price)
  end
end
