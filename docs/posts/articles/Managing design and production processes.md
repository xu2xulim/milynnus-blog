---

date: 2024-06-29 08:00:00
draft: false
readtime: 3
tags:
- project management
- trello
published: true
categories:
- Articles
authors:
- sunny
---

\#**Managing design and production processes**

Use Trello to manage the design and production processes for a interior renovation firm.

![Screenshot\\\\\_2024-06-26\\\\\_at\\\\\_9.12.41\\\\\_AM.png](https://trello.com/1/cards/66544449abea82232e6b06ba/attachments/667b6b2a4c4c27f3f914e5b4/download/Screenshot_2024-06-26_at_9.12.41_AM.png)

<!-- more -->

The customer had been using Trello but without any automation where project cards are created to allow designers to work together to finalise the design before they are handled off to the production team for the actual work to be carried out.

The initial work commissioned is for a prototype to be developed for the design activities.

Summary of key features:

- An **Automator** board containing card templates for description and checklist to be created automatically on a **Project** card. For example a project card for Hallway design  will be populated with relevant information in the description field and a checklist for Hallway  are created via Trello automation. Presently, it supports the design and production phases of a job.
- A Trello template card is used to create a design job/customer card.
  - It has checklist for project names that the admin had been created on the **Automator** board
  - An empty **Projects** checklist

![Screenshot\_2024-06-26\_at\_9.07.33\_AM.png](https://trello.com/1/cards/66544449abea82232e6b06ba/attachments/667b6b606034e93c7249e89a/download/Screenshot_2024-06-26_at_9.07.33_AM.png)

- New projects are created by dragging the project names onto the **Projects** checklist. Trello automation. This will
  - create a **Project** Card which has a cardlink to the job/customer card
  - create the cardlink as an item in the **Projects** checklist
  - update the **Project** card description with relevant content and create a checklist specific to the project eg Hallway Checklist

---

![Screenshot\_2024-06-26\_at\_9.09.09\_AM.png](https://trello.com/1/cards/66544449abea82232e6b06ba/attachments/667b6b8d6d95274bcc00427f/download/Screenshot_2024-06-26_at_9.09.09_AM.png)

- When the **Project** card is moved to the Done list, the corresponding item on the **Projects** checklist will be checked (marked completed) and an entry is add to the **Production Ready** checklist

![Screenshot\_2024-06-26\_at\_9.12.41\_AM.png](https://trello.com/1/cards/66544449abea82232e6b06ba/attachments/667b6b2a4c4c27f3f914e5b4/download/Screenshot_2024-06-26_at_9.12.41_AM.png)

- By adding a **Production** label (actual method to trigger the automation to be finalised), a new linked **Production** card is created on the **Production** board together with the **Production Ready** checklist and an empty **Projects** checklist
  - This allows for the same drag and drop to create new Project cards to be used by members of the Production board
  - The move to **Done** list does essentially the same thing as in the **Design** to check the item on the **Projects** checklist and to add an entry to the **Delivery Ready** checklist
  - When a new design change request is completed after production had started, this will be pushed automatically to **Production** as a new project

---

This work is an enhancement made to the basic design documented [here.](https://newblogdoc-1-l0174261.deta.app/posts/coordinate-work-and-receive-completion-status-in-trello/ "‌")