# Bookstore

## How to run the project
### 0. Pre-requisites installation
- Poetry
- Docker
- Docker Compose
- Make

### 1. Clone the repository
```bash
git clone https://github.com/LuizFernandesOliveira/bookstore-api.git
```

### 2. Install the dependencies
```bash
poetry install
```

### 3. Start the containers (database)
```bash
make docker-up
```

### 4. Run the migrations
```bash
make database-makemigrations database-migrate
```

### 5. Run server
```bash
make server-run
```