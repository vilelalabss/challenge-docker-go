# challenge-docker-go

**Build Image**
```bash
docker build -t go .
```

**View Images**
```bash
docker images
```

**Run Container**
```bash
docker run --rm -it -v $(pwd)/:/go/src/app go bash
```

**Exec program**
```bash
go run .
```