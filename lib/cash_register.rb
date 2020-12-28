require "pry"

class CashRegister

    attr_accessor :discount, :total, :items

def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
end


def total
    return @total
end


def add_item (title, price, quantity = 1)

  # item_info = {}
  # item_info[:name] = title
  # item_info[:price] =  price
  # item_info[:quantity] = quantity

  # @items << item_info

  # list = []
  # i = 0
  # @items.each do |item|
  #  while i < item[:quantity]
  #   i+=1
  #      list << item[:name]
  #  end

  quantity.times do
     @items << title
  end

   @last_transaction_amount = price*quantity

   @total += price * quantity
end


def apply_discount
    if @discount == 0
       return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
        return "After the discount, the total comes to $#{@total}."
end

 
 def void_last_transaction
    @total -= @last_transaction_amount
end


end