---
date: 2024-12-20 08:00:00
draft: false
readtime: 5
tags:
    - trello
    - project management
published: true
categories:
    - Articles
---
#Using Trello to run my real estate business

<!-- More -->
‌
Sam (not his real name) runs a successful real estate business with his team of business partners. He started using Trello to manage their buying and selling clients from a single board, creating new listing cards from templates. Each template includes 32-63 checklist items across 9-12 sales stages for both the Buying and Selling sides of his business. Each stage is represented by a Trello card checklist, with guidance materials in Google Drive and 12 instructional videos for his business partners to reference throughout the process. 

Despite having everything meticulously planned, Sam's main frustration is that he spends more time each day figuring out the statuses and making changes on the Trello board than on actual sales.

Based on design ideas from  [From idea to design - a software product development example](https://blog-doc-ngaw.onrender.com/posts/from-idea-to-design-a-software-product-development-example/) and [Scrum and Sprint](https://blog-doc-ngaw.onrender.com/posts/scrum-and-sprint/), the following system was created: :

##### Real Estate Sales Daily board

*  **New Listing Cards**: New buying and selling listing cards are created, which automatically generate sales stage cards on either the Buying or Selling board.
*  **Progress Tracking**: As each sales stage progresses, a label is added to indicate the status. This allows users to quickly see the progress of each opportunity.
*  **Automation**: Trello automation records sales stage completions automatically and removes the respective labels.

##### Separate Buying and Selling boards

*  **Stage Card Creation**: These boards receive sales stage cards from the Sales Daily board, where stage item cards are created with corresponding labels.
*  **Completion Tracking:** Using Trello automation, stage item completions are recorded automatically when the items are moved to the "Done" list, and the respective labels are removed.
*  **Status Reporting**: When a "Stage Completed" label is added, the status is reported back to the Real Estate Sales Daily board.
*  **Linked Spin-Off Cards**: Stage item cards can be used to create new linked "Spin-Off" cards, allowing board members to facilitate work without being constrained by prescribed procedures.

##### An automator board

*  **Card Generation**: This board is populated with cards based on Sam's well-defined checklists, checklist items, and embedded guidance materials.
*  **Automation**: Trello automation ensures the right card is copied and used on the Sales Daily, Buying, and Selling boards.
   
##### Additional Features

*  **Navigation**: By utilizing Trello automation, card links, and naming conventions, users can easily navigate between parent and child cards, quickly understanding the task (sprint item), sales stage, and opportunity being worked on.
*  **Dashcard Power-Up**: This feature tracks various card statuses from the Sales Daily board.
*  **Contact Management Power-Up**: Facilitates communication and manages contact-specific custom data that can be used in Trello automation and with software like Zapier.

These improvements aim to enhance the clarity, structure, and readability of the text, making it easier to understand Sam's setup and the solutions implemented to address his frustrations. If you need further refinements or additional details, feel free to let me know!