# Alura DevOpsChallenge01
#alurachallengedevops1

Repo for the Alura's DevOps Challenge: https://www.alura.com.br/challenges/devops

# Wut???

A challenge proposed by the Alura team where we must host an application developed in python + django and transform it into a container, and implement an CI/CD pipeline with the purpose to make an continuous delivery for the app

# How to run?

Just clone the code using: 'git clone https://github.com/mnogueiraops/DevOpsChallenge01.git' and run it using 'docker compose up -d'

# Dockerfile

The Dockerfile built on this repo have these roles: Create an workdir to the app inside the container; Set python env's; Create workdir and copy the project to it; It triggers the 'pip' install/upgrade and triggers the requirements install by pip and then give exec permissions and exec our 'startup.sh' entrypoint file.

# Entrypoint (startup.sh)

The 'startup.sh' will create/migrate an SQLITE, create the superuser called 'admin' and trigger the RUNSERVER on port 8000.

# Docker Compose



