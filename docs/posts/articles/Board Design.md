---
date: 2025-05-05 08:00:00
draft: false
readtime: 5
tags:
    - project management
    - trello
published: true
categories:
    - Articles
authors:
    - sunny
---

#**Board Design featuring curated set of capabilities**

This board design features a set of curated capabilities drawn from work with clients.
![Master\_Board.png](https://trello.com/1/cards/681429bc6ba7eefddd7f2ed9/attachments/6814778a2890e851226ffdb3/download/Master_Board.png)
<!-- more -->

The overall board design and card relationships is built around a hierarchical structure. In this design, for purpose of demo, is based on the hierarchical structure - **Epic-Stage-Sprint**.

This structure is further enforced via lookup of cards from an **Automator** board. The cards on this board represent either a Stage or Sprint card where guidance materials, assignment,  attachments, checklists, …etc can be added. This ensures that each copy of a Stage or Sprint card is consistently created. A _Days to complete_ custom field is used by a micro to compute the due dates when a Stage or Sprint card is created.

![Sprint\_Items\_Checked.png](https://trello.com/1/cards/681429bc6ba7eefddd7f2ed9/attachments/68143631d5e87ea945d22f3e/download/Sprint_Items_Checked.png)

All cards in Trello, perhaps with exception of Mirror and Link cards, are standalone containers for user data like card name, descriptions, checklist and items, attachments, …etc. However, for  most workflow the use of a card may not be sufficient to express the relationships of one card to another.  Hence this use of card links.

This board design uses card links extensively to establish the relationships between epic, stage and sprint cards.  The relationships enables better use of Trello automation especially in the area of status reporting. A common use case is to report of stage or sprint completion either via use of labels or to move a card to _Done_ list.

###Advanced features

![Stage\_Complete.png](https://trello.com/1/cards/681429bc6ba7eefddd7f2ed9/attachments/681436128394dbdbb8158cd7/download/Stage_Complete.png)

This included:

- Use of **Days to complete** to set the due dates for either a Stage or Sprint card
- **Spin off card** - to create additional sprint cards using an sprint card as a template and link this to to corresponding Stage card

###Selective use of Power Up

- Dashcard - given a well thought out board design, the use of the Trello power up because a very useful tool for tracking and monitoring of work across multiple boards
- Contact management and communication - there are many power ups that will provide the ability to send email to client. This selected Power Up has more capabilities include intake forms, smart links, email automation, …etc
- Board Permission - use of this power up helps prevent unintended changes make to the board that affects the smooth function of automation set on the board

###Use of Mirror Card

This is a relatively new feature added by Trello in the beginning of 2025. Since then, this has been used with my clients including a USA integrated packaging solution manufacturer and a Canadian immigration consultant. Excessive use of Mirror cards can created a maintenance issue so they should be deployed to enhanced the capabilities of the board design especially in area of monitoring the progression and statuses of work performed on the source card. Trello automation should be deployed in conjunction with your archival scheme to remove the mirror cards from the boards.

###Booking Link

Please use this link to book a demo:

[https://tidycal.com/milynnus/board-design](https://tidycal.com/milynnus/board-design "smartCard-inline")