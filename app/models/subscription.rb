class Subscription < ActiveRecord::Base
  belongs_to :subscriber

  def price_with_tax
    if subscriber && subscriber.in_state
      price * 1.075
    else
      price
    end
  end
end
