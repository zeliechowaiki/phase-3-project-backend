class Item < ActiveRecord::Base

  has_many :bids
  has_many :users, through: :bids
<<<<<<< HEAD
=======

  def close_auction
    loser_bids = self.bids.first self.bids.length-1
    loser_bids.each(&:destroy)
  end

>>>>>>> Zelie
end