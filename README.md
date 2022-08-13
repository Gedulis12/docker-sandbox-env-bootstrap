# Quick way to spin-up a sandbox environment (Arch distro) on localhost via docker

## How-to start up

Clone this repository and run the following commands:
```
1. docker build -t gedulis12/sandbox:latest .
2. docker-compose up -d
```
That's it! In order to ssh into the sandbox environment:
`ssh -p 2200 sandboxuser@localhost`
