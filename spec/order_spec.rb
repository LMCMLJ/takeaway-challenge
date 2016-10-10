require 'order'
require 'menu'

describe Order do

  before :each do
    @order = Order.new
    @menu = double(:menu)
    allow(@menu).to receive(:print_menu).and_return({:Hawaiian => 12.50})
  end

  describe '#request_menu' do
    it 'returns the keys and pointers from the menu class' do
      expect(@order.request_menu(@menu)).to eq({:Hawaiian => 12.50})
    end
  end

  describe '#create_order' do
  end

  describe '#select_item' do
    it 'appends the requested item from fullmenulist to selection' do
      @order.full_menu_list = {:Hawaiian => 12.50}
      @order.select_item(:Hawaiian)
      expect(@order.selection).to eq([12.50])
    end
  end

  describe '#request_confirmation' do
  end

  describe '#place_order' do
    it 'Notifies user of total price and sends confirmation text' do
      expect(@order).to receive(:request_confirmation)
      @order.place_order
    end
  end

  describe '#total_price' do
  end

end
