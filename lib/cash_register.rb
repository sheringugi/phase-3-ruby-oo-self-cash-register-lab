class CashRegister
  attr_accessor :discount, :total, :items, :transaction, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transaction=transaction
    
  end

  def add_item(title, price, quantity = 1)
    @last_transaction= price * quantity
    @total += @last_transaction
    quantity.times { @items << title }
   
  end

  def apply_discount
    if @discount > 0
      @discount_amount = @total * @discount / 100.0
      @total -= @discount_amount.to_i
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  

  def void_last_transaction
    self.total -= self.last_transaction
  end
  end