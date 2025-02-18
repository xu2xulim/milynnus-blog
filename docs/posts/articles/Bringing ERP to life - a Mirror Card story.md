---
date: 2025-02-14 08:00:00
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
#**Bringing ERP to life - a Mirror card story**

Elevating the visibility of work from sales to production
![Mirror\_-\_Master\_Board.png](https://trello.com/1/cards/67b3e4cc97c304a9b764f290/attachments/67b3e4ea01aa5310ba0d9c39/download/Mirror_-_Master_Board.png)

<!-- more -->

Ace Inc. (not the real name of the company) is a US company providing integrated packaging solutions. They had been using their home-grown Visual Basic ERP for several years. The ERP system is used to create projects and assign tasks to four departments within Ace: Concept Design, Material Procurement, Prototype Development and Quality Assurance. This process had been working well for them, and their business has been growing rapidly. It has come to a crunch, and the CEO felt that he needed more visibility into the projects and the status of work in the four departments. After some research, they decided to use Trello and its Card Mirror feature to ensure seamless overall management of their work processes for project management leading to production.

## Mirror Card

The Trello Mirror card feature is a relatively new feature released only in early 2025. It allows for updates visible on ‘mirrored’ cards across the workspace. This is ideal for sharing instant updates and keeping the team on the same page regarding statuses. However, ‘mirrored’ cards are not regular Trello cards, and incorporating them into the workplace with Trello requires new board design considerations.

Ace requires mirrored cards to be created in all four departments and four more on the Master board, each representing the status of assigned work in the departments.

## Project, Mirror and Sprint

![Mirror\_-\_Master\_Board.png](https://trello.com/1/cards/67b3e4cc97c304a9b764f290/attachments/67b3e4ea01aa5310ba0d9c39/download/Mirror_-_Master_Board.png)

### Project Card

The Project card sits on the master board. It is the placeholder for all projects and tasks from the ERP system. It holds the assigned task at the time of creation and provides links to the Sprint cards in the departments.

As work is completed in the department, this is also shown on the project card and mirrored across the workspace.

Labels are used to highlight the assigned work in the departments and are removed when the work is completed.

### Project Mirrored Card

As the name suggests, it is a mirrored version of the Project card. As a mirror card, it allows users to watch the card as well as navigate to the project card easily without having to use card links. The mirroring process is totally transparent to the Trello board users.

### Sprint Card
The Sprint card is a regular card created when the project is created or upon receipt of new instructions from the ERP system. It contains only the work items specific to the department. It allows for the assignment of card members, which will move the card to the list corresponding to the member’s name. As work items (aka checklist items) are completed, the statuses are updated on the Project card, including when it is moved to the “Done” list, which will trigger the removal of the department label from the Project card.

## ERP - Trello Integration

Because of Ace’s unique business requirements, it was ascertained very early in the prototyping stages that Zapier would not be able to handle their requirements inexpensively. Ace made the decision to use a microservice to handle the integration as well as other automation requirements.

### Project Created

The instructions come from the ERP system to create the project card, laying out the foundation via invisible labels and empty checklists, to trigger Trello automation to create and link department Sprint cards.

The checklists by department are containers to receive any tasks coming from the ERP system or native Trello automation such as the “Special Instruction” automation.

The instruction includes the creation of links as attachments on the Project and Sprint cards. These Office 365 links are for SharePoint and OneNote specific to the project.

![ERP\_to\_Trello.png](https://trello.com/1/cards/67b3e4cc97c304a9b764f290/attachments/67b3e4ea518463aad7029c00/download/ERP_to_Trello.png)

When a Sprint card is created, an HTTP request is used to send the project ID, project card, and sprint card URLs to the ERP via Zapier.

### Add Items

The instructions come from the ERP system to create tasks as checklist items with due dates on the Project card as well as the department Sprint card.

This feature is also used to receive Special Instruction requests to create items on the checklist.

## Automation

This section highlights some of the unique automation created in support of Ace's unique business requirements. A FastAPI microservice provides the following services:

### Add attachments

Trello automation does not support copying links (attachments) from one card to another. This feature is made possible using the Trello API.

### Due Date

Trello automation does not support assigning due dates to checklist items (other than using a date custom field) and reflecting the latest due dates from a checklist as the Due Date for the Sprint card.

### Special Instructions

This is a Trello automation triggered on the Sprint card that calls the “Add Items” integration endpoint, allowing new items to be added to both the Project and Sprint cards.

Special instructions can be used to facilitate work that arises from unique conditions such as rework, defects, new requirements, change requests, etc.

## DashCard

Trello DashCard is used to track key performance indicators across the boards. This is made possible via naming conventions for boards, labels, due dates, member assignments, etc., implemented largely via automation. It enhances the visibility of work performance via the **Watch Towers** across the enterprise.