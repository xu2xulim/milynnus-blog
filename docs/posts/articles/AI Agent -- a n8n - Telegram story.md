---

date: 2025-02-22 08:00:00
draft: false
readtime: 3
tags:
- telegram
- n8n
published: true
categories:
- Articles
authors:
- sunny

---

#**AI Agent -- a n8n - Telegram story**

Leveraging the power of AI to manage contacts, jobs, geo location, documents, photos and more

![1737191220884.png](https://trello.com/1/cards/67ba3bcd1e97bc44e35cc095/attachments/67ba3ca23d3122dc9dba1272/download/1737191220884.png)

<!-- more -->

This project involves the creation of a MVP for a solution for roofing business using JobNimbus.

![JobNimbus-logo.jpg](https://trello.com/1/cards/67ba3bcd1e97bc44e35cc095/attachments/67ba3c296a38b7c51060fb50/download/JobNimbus-logo.jpg)

The need to be able manage his business from anywhere, even under the hot sun, was the primary motivation for Paul (not his real name) to create a solution that enables him to manage his contacts, jobs, documents and photos using modern technology such as speech to text on his mobile devices using Telegram bot.

Guided by a Youtube video he deployed his first AI Agent using n8n Ultimate Agent but soon hit a roadblock with JobNimbus. The good news is that after a few days we got a MVP that has the following capabilities all via Telegram chat:

- Create a contact
- Create a job for a contact
- Upload photos for job
- Upload documents for job or contact
- Support of geocoding to enable maps for contact address and location of jobs

![Screenshot\_2025-02-23\_at\_5.15.32\_AM.png](https://trello.com/1/cards/67ba3bcd1e97bc44e35cc095/attachments/67ba443f0ceca0128addaeba/download/Screenshot_2025-02-23_at_5.15.32_AM.png)

While testing is ongoing to fine tune the Agent, it can interact with the Telegram user effectively, responding to natural language messages including partial or inaccurate messages like

`giving the agent an incorrect address, `

`agent, when given partial addresses, asking the user to confirm from a list or accept new details to improve of geocoding`

asking the agent to use information from another contact like

`Person 2 is staying at the same place as Person 1`,

and more.

One of the **major challenge** was to create a file in JobNimbus. While Telegram chat will accept photos and documents, these message types do not allow you to provide enough information, at the same time, required by JobNimbus API.

A way has been found to have the Agent create the payload to be included as caption when uploading a document or photo. The payload will uniquely identify the job or contact, the file type and subtype, filename and description (AI Generated), timestamp…etc. The file data is fetched by Telegram via a get file and sent to n8n with the payload as the caption. JobNimbus API will perform the actual creation of the document or photo.

The above requires some degree of user intervention. The alternative approach is to maintain the metadata of the upload Telegram photo or document in some database. The payload and file details are then fed into an webhook to create the file in JobNimbus. While this appropriate does not require manual copy and paste action, it does create a maintenance requirement of Telegram files and the metadata database. Furthermore, the number of files need to be managed. It is helpful that the database used allows for queries to be implemented e.g.

`{"query" : {"where" : {"tmeId" :  {{ $('Telegram Trigger').item.json.message.chat.id }}, "description" : { $like: "%{{...search word}}%" } }}}`

While the above is sufficient as a MVP, work in currently on-going to find a better solution.