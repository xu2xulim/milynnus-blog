---
date:
    created: 2024-12-29
    updated: 2025-02-01
draft: false
readtime: 5
tags:
    - trello
    - telegram
    - streamlit
    - openai
    - assistant api
    - fastapi
    - AI
published: true
categories:
    - Articles
title: Connect with your OpenAI Assistant
description: A FastAPI OpenAI Assistant micro that connects with Telegram, Streamlit, Trello, and more
featuredImage: /static/images/templates.avif
---
A FastAPI OpenAI Assistant micro that connects with Telegram, Streamlit, Trello, and more
![Assistant\_conversation\_in\_thread\_is\_strictly\_private.png](https://trello.com/1/cards/6661842986eb2b6c682107cd/attachments/6678bef969a12807eb6fb2a3/download/Assistant_conversation_in_thread_is_strictly_private.png)
<!-- More -->
This is a FastAPI micro that allows a web app like Telegram, Streamlit, Trello, and others connect with any any OpenAI Assistant.

The Assistants API simplifies building assistants by managing conversation history, retrieval-augmented generation (RAG), and tool calling for you. We've made several improvements, including knowledge retrieval with up to 10,000 files per assistant, customisable file chunking, an integrated vector store, token controls, support for streaming and fine-tuned models, and additional parameters in the API.

Presently, the services allows you to :

- get details of the Assistant
- create a new thread
- delete a thread
- chat with the Assistant
- get list of files in Assistant
- receive file created in Assistant
- (more to be added in near future)

It supports all the tools available on an Assistant `code_interpreter` and `file_search`, or call a third-party tools via a `function` calling including the ability to add additional instructions. The actual code for the functions need to be added as these would be specific your use case.

## Telegram

![Assistant\_conversation\_in\_thread\_is\_strictly\_private.png](https://trello.com/1/cards/6661842986eb2b6c682107cd/attachments/6678bef969a12807eb6fb2a3/download/Assistant_conversation_in_thread_is_strictly_private.png)

For the demo setup on Telegram, a /assistant command is used to initiate a thread. The thread\_id is kept with the user Telegram id in AWS Dynamodb along with other app data. /disconnect command is used to delete the thread\_id, thus allowing a new thread to be created. The thread persistency allows chat history to provide context, if required, to able ChatGPT provide the most appropriate response message

## Streamlit

![Assistant\_same\_thread\_used\_by\_different\_sw.png](https://trello.com/1/cards/6661842986eb2b6c682107cd/attachments/6678bef94dd5862be07b8de7/download/Assistant_same_thread_used_by_different_sw.png)

For the demo setup on with Streamlit, the chat with a OpenAI Assistant is implemented as an app in a multi page app authenticated user environment. In this case, the authentication is via AWS Cognito which include social login.

## Trello

![Assistant\_use\_to\_recommend\_email\_reply\_with\_context.png](https://trello.com/1/cards/6661842986eb2b6c682107cd/attachments/667a18e33c88af3b5e52136f/download/Assistant_use_to_recommend_email_reply_with_context.png)

The same micro is used in my own Trello CRM to summarise email reply history and using it to provide context to recommend a reply. The message is created as a comment that the user can the use it to reply from the same card.

## Web App

![Screenshot\_2024-07-15\_at\_2.58.49\_PM.png](https://trello.com/1/cards/6661842986eb2b6c682107cd/attachments/6694c9dba9e6193732e9a1e2/download/Screenshot_2024-07-15_at_2.58.49_PM.png)

Likewise, with a bit more work the same Assistant (micro) can be connected to your web app.

In this case, this is a Sveltekit app using TalkJs create a page where you can have chat with different Assistants. For example, it can be an employee workforce page covering different topics relating to HR matters.

Shown above in the protected zone that the employee will have access after authenticated by AWS Cognito. Here to create a personal free, "*Abby Klein*" is actually a bot that is implemented using a micro that connects to the OpenAI Assistant instance.