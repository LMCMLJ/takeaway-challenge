require_relative 'menu'
require_relative 'twilio'

class Order
  # Deals with most of the backend logic of initiating, creating and placing
  # the order.

  attr_accessor :full_menu_list
  attr_reader :selection

  def initialize
    @menu = Menu.new
    @twilio = Twilio.new
    @selection = []
  end

  def request_menu(location)
    @full_menu_list = location.print_menu
  end

  def select_item(itemname)
    @selection << @full_menu_list[itemname]
  end

  def request_confirmation
    # call twilio
  end

  def place_order
    puts "Your order is being placed..."
    request_confirmation
  end

  def total_price
  end

end
