require 'order'
require 'menu'

describe Order do

  before :each do
    @order = Order.new
    @menu = 'Hawaiian: 12.50, Pepsi: 1.50'
  end

  describe '#request_menu' do
    it 'returns the keys and pointers from the menu class' do
      expect(@order.request_menu).to eq()
    end
  end

  describe '#create_order' do
  end
  
  describe '#select_item' do
  end

  describe '#request_confirmation' do
  end

  describe '#place_order' do
  end

  describe '#total_price' do
  end

end
