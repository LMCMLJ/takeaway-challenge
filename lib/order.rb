require_relative 'menu'
require_relative 'twilio'

class Order
  # Deals with most of the backend logic of initiating, creating and placing
  # the order.
  def initialize
    @menu = Menu.new
    @twilio = Twilio.new
  end

  def request_menu
  end

  def create_order
  end

  def select_item
  end

  def request_confirmation
  end

  def place_order
  end

  def total_price
  end

end
