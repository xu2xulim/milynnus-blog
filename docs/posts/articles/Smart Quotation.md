---
date: 2025-05-02 08:00:00
draft: false
readtime: 5
tags:
    - stripe
    - chatgpt
    - trello
    - home services
    - quotation
published: true
categories:
    - Articles
authors:
    - sunny
---

#**Smart Quotation Deposit Payment Using Trello**

Smart quotation scenario using [Make.com](http://Make.com "‌") to send a AI generated quotation with Stripe checkout for deposit payment via Trello automation
![Make\_-\_Quotation\_and\_Deposit\_Collection.png](https://trello.com/1/cards/68141a2d40955fa4d70b7274/attachments/68141e350ee4b90b97120825/download/Make_-_Quotation_and_Deposit_Collection.png)
<!-- more -->
This was created for cleaning company in the USA. They wanted to build more intelligence into their current customer intake process on Launcher27. The areas for improvement included:

- Allowing customer to make adjustment to their request
- Using AI to create a customer quotation to include add-on services
- Collect deposit payment
- Integrate with their CRM and HouseCall Pro


The above is the basic construction of the [Make.com](http://Make.com "‌") scenario to accept data from a form to generate the quotation. This included the calculation using ChatGPT Assistant to create a quotation card in Trello and also to send the quotation. Besides, the generated text, the quotation included a deposit payment checkout link. The Assistant uses ChatGPT file search and code interpreter to calculate the price as well as the deposit to be collected.

The scenario will, automatically, creates a contact and associates it to the Trello card. The triggered automation is via a capability provided by the Power Up installed on the board.

![Make\_-\_Stripe\_Checkout.png](https://trello.com/1/cards/68141a2d40955fa4d70b7274/attachments/68141faca002738cf39ed2a8/download/Make_-_Stripe_Checkout.png)

The above Stripe checkout scenario creates a Stripe checkout session when the customer clicks on the deposit payment link. When the checkout is completed, the status is update on the card. This update ensures that no checkout session will be launched if a deposit had been created. ChatGPT is also used to extract the deposit amount from the quotation text.

The frontend for this MVP is a custom form Sveltekit app that fetch property details - the size, the number of bedrooms and number of bathrooms. The customer is allowed to adjust the data before submission. The quotation scenario makes use of the adjusted data to generated the quotation. The customer, then, selects the services required before requesting for a quotation.

Using ChatGPT Assistant provides greater flexibility in pricing as well as ease of maintenance since nothing is hard-coded into the app.