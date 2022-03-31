class User < ActiveRecord::Base

  has_many :bids
  has_many :items, through: :bids

  def bids_list
    items = self.items.uniq
    item_bids = []
    items.each do |item|
      item_bid = item.bids.where({user_id: self.id}).last
      item_bids.push(item_bid)
    end
    item_bids.sum(&:bid_amount)
  end

end