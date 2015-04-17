module Shoppe
  class NotificationMailer < ActionMailer::Base
  
    def order_received(order)
      @order = order
      mail from: Shoppe.settings.outbound_email_address, to: Shoppe.settings.outbound_email_address , subject: "New Order Received"
    end

    def order_confirmed(order)
      @order = order
      usr_email  = order.email_address
      mail from: Shoppe.settings.outbound_email_address, to: usr_email, subject: "Your Order Confirmed!"
    end
  end
end