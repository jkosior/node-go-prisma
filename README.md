# node-go-prisma

1. [Before startup](#before-startup)

2. [Variables](#variables)

3. [Startup for bash users](#startup-for-bash-users)

4. [Startup for make users](#startup-for-make-users)

## Before startup

```bash
  cp .env.sample .env
```

Then fill in all needed variables.

[To top](#node-go-prisma)

## Variables

* `PRISMA_PORT` - port used for communicatio with prisma
* `POSTGRES_USER` - postgres username
* `POSTGRES_PASSWORD` - postgres password

[To top](#node-go-prisma)

## Startup for bash users

* to build

  ```bash
    ./setup [-b | --build] [-C container name]
  ```

* to start

  ```bash
    ./setup [-s | --start] [-C container name]
  ```

* to start dev (with logs)

  ```bash
    ./setup [-d | --dev] [-C container name]
  ```

* to stop

  ```bash
    ./setup [-S | --stop]
  ```

* to remove unused containers and networks

  ```bash
    ./setup [-p | --prune]
  ```

* for more commands use

  ```bash
    ./setup [-h | --help]
  ```

[To top](#node-go-prisma)

## Startup for make users

* to build

  ```bash
    make build
  ```

* to start

  ```bash
    make start
  ```

* to start dev (with logs)

  ```bash
    make dev
  ```

* to stop

  ```bash
    make stop
  ```

* to remove unused containers and networks

  ```bash
    make prune
  ```

[To top](#node-go-prisma)