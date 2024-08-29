# Inception

`Inception` is a DevOps project aimed at introducing the concepts of virtualization and containerization using Docker. The project requires creating a multi-service infrastructure by configuring and orchestrating Docker containers with Docker Compose. The goal is to gain a deep understanding of how to set up and manage containerized services, networks, and storage solutions.

## Table of Contents

- [Inception](#inception)
	- [Table of Contents](#table-of-contents)
	- [About the Project](#about-the-project)
	- [Features](#features)
	- [Technologies Used](#technologies-used)
	- [Getting Started](#getting-started)
		- [Prerequisites](#prerequisites)
		- [Installation](#installation)

## About the Project

The `Inception` project involves setting up a Docker-based environment with multiple interconnected containers. Each container runs a different service, such as a web server, database, or a file storage service. This project is part of the 42 school curriculum and serves as an introduction to modern DevOps practices, focusing on infrastructure as code, container orchestration, and network management.

## Features

- **Containerized Services**: Setup multiple services (Nginx, WordPress, MariaDB, etc.) in isolated Docker containers.
- **Service Orchestration**: Use Docker Compose to orchestrate and manage the containers.
- **Network Configuration**: Configure Docker networks to allow communication between containers.
- **Volume Management**: Use Docker volumes for persistent storage of data.
- **Secure Configuration**: Configure services securely with SSL/TLS certificates.
- **Automated Deployment**: Automate the deployment of services using Docker Compose.

## Technologies Used

- **Docker**: For containerization of services.
- **Docker Compose**: For defining and running multi-container Docker applications.
- **Nginx**: As a web server and reverse proxy.
- **WordPress**: As a content management system (CMS).
- **MariaDB**: As a relational database management system (RDBMS).
- **phpMyAdmin**: For database management.
- **OpenSSL**: For generating SSL certificates.

## Getting Started

### Prerequisites

Before starting, ensure you have the following software installed on your machine:

- **Docker**: [Install Docker](https://docs.docker.com/get-docker/)
- **Docker Compose**: [Install Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/4b93f/Inception.git
   cd Inception
