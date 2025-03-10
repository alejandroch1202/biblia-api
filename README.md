# 📖 Biblia API
Simple API that returns the **Biblia Reina Valera 1960** in JSON format 

## Usage example
It work as simple as possible

### Get the book summary 
| method | endpoint | return | example |
| :-: | :-: | :-: | :-: |
| GET | /api/v1/book | The book summary | [api-reina.poecdn.cloud/api/v1/proverbios](https://api-reina.poecdn.cloud/api/v1/proverbios) |

### Get the whole chapter
| method | endpoint | return | example |
| :-: | :-: | :-: | :-: |
| GET | /api/v1/book/chapter | The entire chapter | [api-reina.poecdn.cloud/api/v1/salmos/23](https://api-reina.poecdn.cloud/api/v1/salmos/23) |

### Get the specific verse
| method | endpoint | return | example |
| :-: | :-: | :-: | :-: |
| GET | /api/v1/book/chapter/verse | The entire chapter | [api-reina.poecdn.cloud/api/v1/juan/3/16](https://api-reina.poecdn.cloud/api/v1/juan/3/16) |
