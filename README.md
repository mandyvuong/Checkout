# Checkout

The purpose of this challenge is to implement a supermarket checkout that calculates the total price of a number of items - to be run in a REPL like IRB. Don't worry about I/O.

## Requirements

In a normal supermarket, things are identified using Stock Keeping Units, or SKUs. In our store, we'll use individual letters of the alphabet (A, B, C, and so on). Our goods are priced individually. In addition, some items are multi-priced: buy n of them, and they'll cost you y pounds.

For example, item A might cost 50 pounds individually, but this week we have a special offer:

- buy three As and they'll cost you 130.
  Our price table and offers:

  | Item | Price | Special offers |
  | ---- | ----- | -------------- |
  | A    | 50    | 3A for 130     |
  | B    | 30    | 2B for 45      |
  | C    | 20    |                |
  | D    | 15    |                |

Notes:

- For any illegal input (non capitals) simply return -1
  In order to complete the round you need to implement the following method: checkout(String) -> Integer

Where:

- param[0] = e.g. 'AAB', a String containing the SKUs of all the products in the basket
- @return = e.g. 120, an Integer representing the total checkout value of the items

## Acceptance Criteria

```
shop.checkout('aBc') # => -1
shop.checkout('-B8x') # => -1
shop.checkout(18) # => -1
shop.checkout('AA') # => 100
shop.checkout('ABCD') # => 115
shop.checkout('AAA') # => 130
shop.checkout('AAAAAA') # => 260
```

## Plan

| Input shop.checkout(SKUs) | Output | Description                                    |
| ------------------------- | ------ | ---------------------------------------------- |
| 'A'                       | 50     | returns price for valid single item A          |
| 'B'                       | 30     | returns price for valid single item B          |
| 'C'                       | 20     | returns price for valid single item C          |
| 'D'                       | 15     | returns price for valid single item D          |
| 'a'                       | -1     | returns -1 for invalid item                    |
| 'AA'                      | 100    | returns price for multiple item A              |
| 'ABCD'                    | 115    | return price for multiple items                |
| 'AAA'                     | 130    | return price for multiple item A thats on deal |
| 'BB'                      | 45     | return price for multiple item B thats on deal |

## Note

This is post Makers Academy where I returned to full-time employment and have limited time to code. I've given myself small coding challenges by completing TDD in Ruby from the Makers Academy process workshops challenges.

This challenge is in progress as I need to implement more complex tests and refactor
