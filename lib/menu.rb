class Menu

  attr_reader :menu_list
  
  def initialize
    @menu_list = { :Hawaiian => 12.50,
                   :Margherita => 8.99,
                   :Calzone => 13.00,
                   :Pepsi => 1.30,
                   :Ice_cream => 2.20 }
  end

  def print_menu
    @menu_list
  end
  
  def obtain_price(key)
    @menu_list[key]
  end
end
