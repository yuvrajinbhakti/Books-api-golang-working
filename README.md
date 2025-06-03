# 📘 Golang CRUD API Example

A simple RESTful CRUD API built with **Go (Golang)**, using the following tools:

- 📦 `net/http` – Standard library for HTTP handling
- 🛣️ `gorilla/mux` – For routing
- 🗄️ `GORM` – ORM for working with the database
- 💾 `SQLite` – Lightweight embedded database (perfect for beginners)

---

## ✨ Features

- Create, Read, Update, Delete operations for books 📚
- Simple JSON-based API
- No frontend – test with Postman or curl

---

## 📁 Folder Structure

go-crud/
├── go.mod
├── go.sum
├── main.go
└── README.md

---

## 🚀 Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/yourusername/go-crud.git
cd go-crud
```

2. Install Dependencies
   bash
   Copy code
   go mod tidy
3. Run the Server
   bash
   Copy code
   go run main.go
   Server runs on: http://localhost:8000

🔌 API Endpoints
✅ Get All Books
GET /books

✅ Get Book by ID
GET /books/{id}

✅ Create a Book
POST /books

Body (raw JSON):

json
Copy code
{
"title": "The Go Programming Language",
"author": "Alan A. A. Donovan"
}
✅ Update a Book
PUT /books/{id}

Body (raw JSON):

json
Copy code
{
"id": 1,
"title": "The Go Programming Language (Updated)",
"author": "Alan Donovan & Brian Kernighan"
}
✅ Delete a Book
DELETE /books/{id}

🛠️ Tech Stack
Tool Purpose
Golang Programming Language
Gorilla Mux HTTP Router
GORM ORM (Object Relational Mapping)
SQLite Lightweight DB

🧪 Testing the API
Use Postman or curl to test each endpoint.

Example curl:

bash
Copy code
curl -X POST http://localhost:8000/books \
-H "Content-Type: application/json" \
-d '{"title":"Golang Basics","author":"Yuvraj Singh Nain"}'
💡 Future Improvements
Replace SQLite with PostgreSQL

Add Authentication (JWT)

Dockerize the app

Connect a frontend (React, Svelte, etc.)

🧑‍💻 Author
Made with ❤️ by Yuvraj Singh Nain
