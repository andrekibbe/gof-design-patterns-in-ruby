require 'test_helper'
require 'agency'
require 'buyer'
require 'house'
require 'seller'

describe Agency do
  let(:buyer)  { Buyer.new budget: 500 }
  let(:seller) { Seller.new balance: 200 }
  let(:house)  { House.new rooms: 3, price: 400, owner: seller }
  let(:agency) { Agency.new }

  before do
    buyer.follow_agency agency
    seller.publish agency, house
    buyer.buy house
  end

  it "helps people buy a house" do
    house.owner.must_equal buyer
  end

  it "helps houseowners sell their houses" do
    seller.balance.must_equal 600
  end
end
