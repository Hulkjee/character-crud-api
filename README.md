 # Character CRUD API

## GitHub Repository
https://github.com/Hulkjee/character-crud-api

## Live API (Render)
https://character-crud-api.onrender.com

---

## API Endpoints

### Get all characters

GET

```
https://character-crud-api.onrender.com/api/characters
```

---

### Get character by ID

GET

```
https://character-crud-api.onrender.com/api/characters/{id}
```

Example

```
https://character-crud-api.onrender.com/api/characters/1
```

---

### Add a character

POST

```
https://character-crud-api.onrender.com/api/characters
```

Example JSON

```json
{
    "name":"Harry Potter",
    "description":"The Boy Who Lived",
    "house":"Gryffindor",
    "role":"Student"
}
```

---

### Update a character

PUT

```
https://character-crud-api.onrender.com/api/characters/{id}
```

Example JSON

```json
{
    "name":"Harry Potter",
    "description":"The Chosen Wizard",
    "house":"Gryffindor",
    "role":"Auror"
}
```

---

### Delete a character

DELETE

```
https://character-crud-api.onrender.com/api/characters/{id}
```

---

### Search by house

GET

```
https://character-crud-api.onrender.com/api/characters/house?house=Gryffindor
```

---

### Search by name

GET

```
https://character-crud-api.onrender.com/api/characters/search?name=Harry
```