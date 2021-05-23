# Users
- enabled: The user is active and can use their account normally.
- disabled: The user is inactive because they deleted their account.

# Orders
- pending: The order is created in our DB and waiting for the payment to be successful (pago efectivo, paypal, stripe, etc) // The order was rejected and is waiting for the user to retry it after updating their information.
- confirmed: The order was successfully charged to the payment method. This will create an Invoice in our DB.
- packaging: Someone saw the order confirmed and started to package it to be sent to the user
- deliverying: The order is getting out of our warehouse
- completed: The user received the products and validated the order as delivered.
- rejected: There was an error processing the order (enough credit/debit in card, not enough product quantity, not enough data to process the order like the address or payment method)
- cancelled: The order was cancelled: it was rejected first, and then cancelled by the user.

# Invoices
- invoiced: The invoice is created in our DB because the order was confirmed. This will send an email to the user with their respective order details (products and quantities).

# Offers
- enabled: The offer is enabled (still needed to checked the started_at and ended_at to verify if offer is currently valid).
- disabled: The offer is disabled (it won't apply a discount even if the product is bought between started_at and ended_at).

# Categories
- enabled: The category works normally.
- disabled: The category won't show up in the views nor its subcategories nor its related products.

# Stores
- open: The store is working correctly so all of its products can be delivered.
- closed: The store can't deliver products so this should change the stock and availability.
