
   
class CashRegister
    attr_accessor :total, :discount, :itemList, :price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @itemList = []
        @price = 0
    end

    def add_item(title, price, quantity = 1)
        self.total += (price * quantity)
        count = 0
        while count < quantity
            self.items.push(title)
            count += 1
        end
        self.price = price * quantity
    end

    def apply_discount
        if self.discount > 0
            percentDiscount = self.discount/100.0
            percentOff = self.total * percentDiscount
            self.total -= percentOff
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        self.itemList
    end

    def void_last_transaction
        self.total -= self.price
    end








end