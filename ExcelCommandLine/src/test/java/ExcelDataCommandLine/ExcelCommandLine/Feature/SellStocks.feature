Feature: This is a part of stock market where user can place sell order for equity for the following transactions
Scenario: Successful login with valid credentials
Given User is on Login Home page
And   User enters UserName and Password
And   Click on Login Now button
Then  Validate the login page	

Scenario Outline: Sell the stock in certain quantity at market or Limit price from different exchange
    Given User is logged in and on Virtual Stocks Home page 
    When  User clicks on Place Order link from left equity widget panel by default Cash Buy form gets open
    Then   User click on Cash Sell tab button 
    Then  Select "<EquityPlaceOrderProduct>"
    And   Select "<ExchangeType>"
    And   Enter "<StockName>" Name
    And   Enter "<SellQuantity>" and select "<OrderValidity>" 
    And   If "<OrderType>" Limit enter "<LimitPrice>" Otherwise left blank
    When  Click on Sell Now button
    Then  Click on Proceed button
Examples:      
      
      | EquityPlaceOrderProduct | ExchangeType | StockName | OrderValidity | SellQuantity | OrderType | LimitPrice |
      
      | Cash                    | NSE          | SBI       | Day           | 915.0        | LIMIT     | £13.77     |
      
      | Cash                    | BSE          | KEC       | Day           | 481.0        | MARKET    | £25.24     |
      
      | Cash                    | NSE          | INFOSYS   | Day           | 407.0        | LIMIT     | £56.82     |
      
      | Cash                    | BSE          | JP        | Day           | 457.0        | MARKET    | £47.03     |
      
      | Cash                    | NSE          | ACC       | Day           | 822.0        | LIMIT     | £50.94     |

      
      | EquityPlaceOrderProduct | ExchangeType | StockName | OrderValidity | SellQuantity | OrderType | LimitPrice |
      
      | Cash                    | NSE          | SBI       | Day           | 915.0        | LIMIT     | £13.77     |
      
      | Cash                    | BSE          | KEC       | Day           | 481.0        | MARKET    | £25.24     |
      
      | Cash                    | NSE          | INFOSYS   | Day           | 407.0        | LIMIT     | £56.82     |
      
      | Cash                    | BSE          | JP        | Day           | 457.0        | MARKET    | £47.03     |
      
      | Cash                    | NSE          | ACC       | Day           | 822.0        | LIMIT     | £50.94     |

      
      | EquityPlaceOrderProduct | ExchangeType | StockName | OrderValidity | SellQuantity | OrderType | LimitPrice |
      
      | Cash                    | NSE          | SBI       | Day           | 915.0        | LIMIT     | £13.77     |
      
      | Cash                    | BSE          | KEC       | Day           | 481.0        | MARKET    | £25.24     |
      
      | Cash                    | NSE          | INFOSYS   | Day           | 407.0        | LIMIT     | £56.82     |
      
      | Cash                    | BSE          | JP        | Day           | 457.0        | MARKET    | £47.03     |
      
      | Cash                    | NSE          | ACC       | Day           | 822.0        | LIMIT     | £50.94     |



