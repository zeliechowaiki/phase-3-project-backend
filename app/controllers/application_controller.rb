class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/items' do
    items = Item.all.order(:auction_end)
    items.to_json
  end

  get '/bids' do
    bids = Bid.all
    bids.to_json
  end

  get '/items/:id' do
    item = Item.find(params[:id])
    item.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  get '/bid_user/:id' do
    bid = Bid.find(params[:id])
    user = bid.user
    user.to_json
  end

  get '/bid_item/:id' do
    bid = Bid.find(params[:id])
    item = bid.item
    item.to_json
  end

  get '/item_bids/:id' do
    item = Item.find(params[:id])
    bids = item.bids
    bids.to_json
  end

  get '/user_bids/:id' do
    user = User.find(params[:id])
    bids = user.bids
    bids.to_json
  end

  get '/highest_bid/:id' do
    item = Item.find(params[:id])
    bid = item.bids.by_amount.first
    bid.to_json
  end

  post '/users' do
    user = User.create(
      name: params[:name],
      username: params[:username],
      password: params[:password],
      money: 100
    )
    user.to_json
  end

  post '/bids' do
    bid = Bid.create(
      bid_amount: params[:bid_amount],
      user_id: params[:user_id],
      item_id: params[:item_id]
    )
    bid.to_json
  end

  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.bids.destroy_all
    user.to_json
  end

  delete '/user_bids/:id' do
    user = User.find(params[:id])
    bids = user.bids
    bids.destroy_all
    bids
  end

  delete '/item_bids/:id' do
    item = Item.find(params[:id])
    bids = item.bids
    bids.destroy_all
    bids
  end

  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(money: params[:money])
    user.to_json
  end

  get '/user_bids_sum/:id' do
    user = User.find(params[:id])
    bids = user.bids_list
    bids.to_json
  end

  patch '/items/:id' do
    item = Item.find(params[:id])
    item.update(open: params[:open])
    item.close_auction
    item.bids.last.user.to_json
  end

  post '/random_bid' do
    randItemId = Item.all.where(open: true).sample.id
    current_account_id = params[:current_account_id]
    randUserId = rand(1..10)
    randBid = Item.find(randItemId).bids.last.bid_amount + rand(5..100)
    bid = Bid.create(
      bid_amount: randBid,
      user_id: randUserId,
      item_id: randItemId
    )
    bid.to_json
  end

end