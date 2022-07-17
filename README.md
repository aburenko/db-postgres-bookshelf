Telegram bot for tracking books.

## build & run (fast)
```bash
docker compose up -d 
```

## build & run (manually)
```bash
docker build -t best_bookshelf .
docker run -d --name best_bookshelf_container -p 5432:5432 best_bookshelf
```

### start console
```bash
docker ps -a # get id
docker exec -it id /bin/bash
```

### remove docker image
```bash
docker image rm 'best_bookshelf'
```