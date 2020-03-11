require 'pry'
class CashRegister

    attr_accessor :total, :employee_discount, :items, :last_transaction
    
    def initialize (employee_discount = nil)
        @total = 0
        @employee_discount = employee_discount
        @items = []
      end

      def discount
        @employee_discount
      end

    # def total
    #     @total
    # end

      def items
        @items
      end

    def add_item(title, price, quantity=1)
        @price = price
        @quantity = quantity
        @total += price * quantity
        @last_transaction = price * quantity
        quantity.times do
            items << title
        end
    end
    
    def apply_discount
        # binding.pry
        if discount
            @total = (total * (100 - discount)/100).to_i
            return "After the discount, the total comes to $#{@total}." #self.total works too
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
      # binding.pry
        @total -= @last_transaction
        # @total = 2.75
        # @price = 1.76

        # self.total = self.total - self.last_transaction
        # end
    end

end
