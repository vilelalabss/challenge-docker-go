# challenge-docker-go

**Build Image**
```bash
docker build -t vilelalabs/go .
```

**View Images**
```bash
docker images
```

**Run Container**
```bash
docker run --rm -it -v $(pwd)/:/go/src/app vilelalabs/go bash
```

**Exec program**
```bash
go run .
```

**Image Docker Hub**
```bash
https://hub.docker.com/repository/docker/vilelalabs/go/general
```
