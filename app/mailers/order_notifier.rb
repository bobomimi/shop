class OrderNotifier < ApplicationMailer

	def received(order)
      @order = order
      mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
    end
end
