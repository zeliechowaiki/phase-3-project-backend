class Bid < ActiveRecord::Base

  belongs_to :user
  belongs_to :item

  def self.by_amount
    self.all.order(bid_amount: :desc)
  end

end