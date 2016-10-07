require 'menu'

describe Menu do

  before :each do
    @menu = Menu.new
    @menu_list = @menu.menu_list
  end

  describe '#print_menu' do
    it 'displays the current menu, with prices' do
      expect(@menu.print_menu).to eq(@menu_list)
    end
  end

  describe '#obtain_price' do
    it 'returns value associated with key' do
      expect(@menu.obtain_price(:Hawaiian)).to eq 12.50
    end
  end
end
