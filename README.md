# Food Waste Redistribution

## Requirements
- Internet access (the database is hosted on Supabase)

## How to run

The system needs **two processes**: the server first, then the client.

1. Open the project in IntelliJ. Wait for Maven to finish indexing.
2. Run **`org.example.server.core.Server`** — the server starts listening for client connections.
3. Run **`org.example.client.core.ClientMain`** — the login window opens.

You can start the client multiple times in parallel to demo the full flow (one provider, one customer, one admin).

## Demo accounts

| Role     | Email               | Password   |
|----------|---------------------|------------|
| Provider | provider@demo.com   | `password` |
| Customer | customer@demo.com   | `password` |
| Admin    | admin@demo.com      | `password` |

## Project structure

- `src/main/java/org/example/server` — server sockets, threads, JDBC repositories
- `src/main/java/org/example/client` — JavaFX client views, view models, networking
- `src/main/java/org/example/shared` — DTOs and the request/response protocol used over the socket
- `src/main/resources/server/sql/schema.sql` — database schema
- `src/main/resources/server/config/database.properties` — database connection settings
- `src/test/java` — unit and concurrency tests
