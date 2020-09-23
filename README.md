Merchants add bulk discount rates for all of their inventory. These apply automatically in the shopping cart, and adjust the order_items price upon checkout.

1. Merchants need full CRUD functionality on bulk discounts, and will be accessed a link on the merchant's dashboard.
1. You will implement a percentage based discount:
   - 5% discount on 20 or more items
1. A merchant can have multiple bulk discounts in the system.
1. When a user adds enough value or quantity of a single item to their cart, the bulk discount will automatically show up on the cart page.
1. A bulk discount from one merchant will only affect items from that merchant in the cart.
1. A bulk discount will only apply to items which exceed the minimum quantity specified in the bulk discount. (eg, a 5% off 5 items or more does not activate if a user is buying 1 quantity of 5 different items; if they raise the quantity of one item to 5, then the bulk discount is only applied to that one item, not all of the others as well)
1. When there is a conflict between two discounts, the greater of the two will be applied.
1. Final discounted prices should appear on the orders show page.

#### Mod 2 Learning Goals reflected:
- Database relationships and migrations
- Advanced ActiveRecord
- Software Testing

percentage based discount
only applies to one merchant
highest possible discount

Database

DISCOUNTS
name
percent_off
merchant relationship - one to many
min_quantity

#NOTES/SUDO

discount is percentage based
discount specifc to merchants - mulitple items from mulitple merchants in cart yet only items from merchant offering discount will be applied to said merchant
discount applied on item reaching min qantitiy only
- not entire cart
one item must reach min quantity
only hightest discount reached is applied

coupon 1 for N 50% off must buy 3 items
coupon 2 for N 100% off must buy 5 items

cart
N - 1000
N - 1000
N - 1000
N - 1000
N - 1000
P - 1000
P - 1000
P - 1000
P - 1000
P - 1000

GT - 10,000

DA - Coupon 2 becuase its the highest percent off with reaching min quantity

GTDA - 10,000
      -
      5,000 DA
      ---------
      5,000
