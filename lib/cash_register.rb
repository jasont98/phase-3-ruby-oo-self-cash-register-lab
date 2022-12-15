class CashRegister

    attr_accessor :discount, :total, :items

    def initialize (discount = 0, total = 0)
        @discount = discount
        @total = total
        @items = []
    end

    def add_item (title, price, quantity = 1)
        @last_amount = price * quantity
        @total += price * quantity
         
        quantity.times {@items << title}
    end

    def apply_discount 
        if @discount > 0
        @total -=  (@total * @discount/100)
        "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items 
        @items
    end

    def void_last_transaction
        self.total -= @last_amount 
    end

end
