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
   go mod tidy
3. Run the Server
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
{
"title": "The Go Programming Language",
"author": "Alan A. A. Donovan"
}
✅ Update a Book
PUT /books/{id}

Body (raw JSON):
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



🚀 Level Up from Here
🧱 1. Add PostgreSQL Instead of SQLite
SQLite is great for learning, but PostgreSQL is what most companies use in production.

Replace SQLite with Postgres using GORM’s Postgres driver

Create a docker-compose.yml file to spin up Go app + PostgreSQL together

🧪 2. Add Unit Testing (Test-Driven Development Basics)
Create a main_test.go and write unit tests for each handler:

bash
Copy
Edit
go test ./...
🔐 3. Add JWT-Based Authentication
Secure your API

Add login/registration

Protect routes using middleware

🧰 4. Use .env and Config Packages
Use github.com/joho/godotenv to manage secrets like DB credentials

Add config struct for scalability

⚙️ 5. Add Logging & Middlewares
Use logrus or zap for structured logs

Add CORS, request logging, panic recovery middleware

📦 6. Deploy It Somewhere
Options:

🐳 Docker on Render.com, Railway, or Fly.io

Manual server: Ubuntu + Docker + Nginx

Or deploy just the Go binary on VPS

💡 7. Connect a Frontend
Build a basic frontend (React or Svelte) that consumes your Go API.

📁 8. Structure Code Better
Use clean architecture:

bash
Copy
Edit
/cmd
/pkg
/internal
/models
/routes
/controllers
🛠️ 9. [Optional] Use Fiber or Gin
Switch from net/http + mux to:

Gin (fastest Go web framework)

Fiber (Express.js like experience)

✅ Recommended Next Step
Since you're aiming for remote SDE roles and real-world dev:

➡️ Migrate this to use PostgreSQL + Docker Compose.
