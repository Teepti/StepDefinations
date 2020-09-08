Feature: This is a part of stock market where user can place buy order for equity for the following transactions
Scenario: Successful login with valid credentials
Given User is on Login Home page
And   User enters UserName and Password
And   Click on Login Now button
Then  Validate the login page


Scenario Outline: Buy the stock in certain quantity at market or Limit price from different exchange
    Given User is logged in and on Virtual Stocks Home page 
    When  User clicks on Place Order link from left equity widget panel by default Cash Buy form gets open  
    Then  Select "<EquityPlaceOrderProduct>"
    And   Select "<ExchangeType>"
    And   Enter "<StockName>" Name
    And   Enter "<BuyQuantity>" and select "<OrderValidity>" 
    And   If "<OrderType>" Limit enter "<LimitPrice>" otherwise left blank
    When  Click on Buy Now button
    Then  Click on Proceed button
    
Examples:
      
      | EquityPlaceOrderProduct | ExchangeType | StockName | OrderValidity | BuyQuantity | OrderType | LimitPrice |
      
      | Cash                    | NSE          | SBI       | Day           | 403.0       | LIMIT     | £0.28      |
      
      | Cash                    | BSE          | KEC       | Day           | 37.0        | MARKET    | £86.85     |
      
      | Cash                    | NSE          | INFOSYS   | Day           | 800.0       | LIMIT     | £55.21     |
      
      | Cash                    | BSE          | JP        | Day           | 81.0        | MARKET    | £47.01     |
      
      | Cash                    | NSE          | ACC       | Day           | 364.0       | LIMIT     | £58.60     |

      
      | EquityPlaceOrderProduct | ExchangeType | StockName | OrderValidity | BuyQuantity | OrderType | LimitPrice |
      
      | Cash                    | NSE          | SBI       | Day           | 403.0       | LIMIT     | £0.28      |
      
      | Cash                    | BSE          | KEC       | Day           | 37.0        | MARKET    | £86.85     |
      
      | Cash                    | NSE          | INFOSYS   | Day           | 800.0       | LIMIT     | £55.21     |
      
      | Cash                    | BSE          | JP        | Day           | 81.0        | MARKET    | £47.01     |
      
      | Cash                    | NSE          | ACC       | Day           | 364.0       | LIMIT     | £58.60     |

      
      | EquityPlaceOrderProduct | ExchangeType | StockName | OrderValidity | BuyQuantity | OrderType | LimitPrice |
      
      | Cash                    | NSE          | SBI       | Day           | 403.0       | LIMIT     | £0.28      |
      
      | Cash                    | BSE          | KEC       | Day           | 37.0        | MARKET    | £86.85     |
      
      | Cash                    | NSE          | INFOSYS   | Day           | 800.0       | LIMIT     | £55.21     |
      
      | Cash                    | BSE          | JP        | Day           | 81.0        | MARKET    | £47.01     |
      
      | Cash                    | NSE          | ACC       | Day           | 364.0       | LIMIT     | £58.60     |




