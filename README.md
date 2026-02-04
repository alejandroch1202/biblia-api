# 📖 Biblia API

Simple API that returns the **Biblia Reina Valera 1960** in JSON format. **Paused due high consumption.**

## Usage example

It work as simple as possible

### Get the book summary

| method |   endpoint   |      return      |                                          example                                           |
| :----: | :----------: | :--------------: | :----------------------------------------------------------------------------------------: |
|  GET   | /api/v1/book | The book summary | [biblia-api.vercel.app/api/v1/proverbios](https://biblia-api.vercel.app/api/v1/proverbios) |

### Get the whole chapter

| method |       endpoint       |       return       |                                         example                                          |
| :----: | :------------------: | :----------------: | :--------------------------------------------------------------------------------------: |
|  GET   | /api/v1/book/chapter | The entire chapter | [biblia-api.vercel.app/api/v1/salmos/23](https://biblia-api.vercel.app/api/v1/salmos/23) |

### Get the specific verse

| method |          endpoint          |       return       |                                         example                                          |
| :----: | :------------------------: | :----------------: | :--------------------------------------------------------------------------------------: |
|  GET   | /api/v1/book/chapter/verse | The entire chapter | [biblia-api.vercel.app/api/v1/juan/3/16](https://biblia-api.vercel.app/api/v1/juan/3/16) |
