# node-go-prisma

1. [Startup for bash users](#startup-for-bash-users)

2. [Startup for make users](#startup-for-make-users)

## startup for bash users

[To top](#node-go-prisma)

* to build

  ```bash
    ./setup [-b | --build] [-C contaier name]
  ```

* to start

  ```bash
    ./setup [-s | --start] [-C contaier name]
  ```

* to start dev (with logs)

  ```bash
    ./setup [-d | --dev] [-C contaier name]
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

## startup for make users

[To top](#node-go-prisma)

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
