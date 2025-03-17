# Yara-X Docker
[![Docker Image CI](https://github.com/poppopjmp/yara-x-docker/actions/workflows/docker-image.yml/badge.svg?branch=main)](https://github.com/poppopjmp/yara-x-docker/actions/workflows/docker-image.yml)
[![Codacy Security Scan](https://github.com/poppopjmp/yara-x-docker/actions/workflows/codacy.yml/badge.svg)](https://github.com/poppopjmp/yara-x-docker/actions/workflows/codacy.yml)


Yara-X Docker is a project that provides a Dockerized environment for running Yara, a tool aimed at helping malware researchers identify and classify malware samples. This project simplifies the setup and usage of Yara by encapsulating it within a Docker container.

## Project Description

Yara-X Docker aims to streamline the process of using Yara by providing a pre-configured Docker image. This allows users to quickly get started with Yara without worrying about dependencies and environment setup. The Docker image includes Yara and all necessary dependencies, making it easy to run Yara commands and scripts.

## Features

- Pre-configured Yara environment
- Easy setup and usage with Docker
- Supports custom Yara rules
- Includes example Yara rules and scripts
- Cross-platform compatibility

## Getting Started

### Prerequisites

- Docker installed on your machine

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/yara-x-docker.git
    cd yara-x-docker
    ```

2. Build the Docker image:
    ```bash
    docker build -t yara-x .
    ```

### Usage

You can either build the Docker image yourself or use the pre-built Docker container available on Github Registry Hub.

#### Using the Pre-built Container

1. Pull the pre-built Docker container:
    ```bash
    docker pull ghcr.io/poppopjmp/yara-x-docker
    ```

2. Run the Docker container:
    ```bash
    docker run -it --rm -v $(pwd)/rules:/rules ghcr.io/poppopjmp/yara-x-docker
    ```

#### Building the Container Yourself

1. Build the Docker image:
    ```bash
    docker build -t yara-x .
    ```

2. Run the Docker container:
    ```bash
    docker run -it --rm -v $(pwd)/rules:/rules yara-x
    ```

3. Use Yara commands inside the container:
    ```bash
    yara -r /rules/example_rule.yar /path/to/scan
    ```

### Custom Rules

You can add your custom Yara rules to the `rules` directory. These rules will be available inside the Docker container at `/rules`.

### Example

An example Yara rule is provided in the `rules` directory. You can use it to test the setup:
```bash
docker run -it --rm -v $(pwd)/rules:/rules yourusername/yara-x yara -r /rules/example_rule.yar /path/to/scan
```

### Additional Rules

Additional Yara rules are available in a separate repository: [Yara Rules](https://github.com/poppopjmp/yara-rules). These rules are checked for syntax errors and validated using Yara-CI to ensure they are error-free and ready for use.

## Contributing

We welcome contributions to the Yara-X Docker project. To contribute, please follow these steps:

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some feature'`)
5. Push to the branch (`git push origin feature-branch`)
6. Open a pull request

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Yara](https://github.com/VirusTotal/yara) - The Yara project
- [Docker](https://www.docker.com/) - Containerization platform
