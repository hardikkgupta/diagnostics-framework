# Linux-Based Diagnostics Test Framework

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue.svg)](https://www.docker.com/)
[![ARM](https://img.shields.io/badge/ARM-Supported-green.svg)](https://www.arm.com/)
[![CI/CD](https://img.shields.io/badge/CI%2FCD-Enabled-orange.svg)](https://github.com/features/actions)

A comprehensive test suite for validating low-level interfaces on ARM-based devices, supporting I²C, SPI, PCIe, and MDIO protocols.

## Features

- **95% Test Coverage** - Automated self-test coverage for low-level interfaces
- **Real-time Logging** - Pass/fail logging with intelligent retry logic
- **CI/CD Integration** - Seamless integration with GitLab CI/GitHub Actions
- **Hardware Support** - Support for multiple hardware revisions
- **Comprehensive Reporting** - Detailed test reporting and logging

## Quick Start

### Prerequisites

- Docker
- Docker Compose
- Git

### Setting Up the Development Environment

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd diagnostics-framework
   ```

2. **Run the setup script:**
   ```bash
   ./scripts/setup_dev_env.sh
   ```

This will:
- Build the Docker development environment
- Start the container
- Provide you with a shell inside the container

To stop the development environment:
```bash
docker-compose down
```

## Project Structure

```
.
├── src/                    # Source code
│   ├── core/              # Core testing framework
│   ├── interfaces/        # Interface-specific tests
│   │   ├── i2c/          # I²C interface tests
│   │   ├── spi/          # SPI interface tests
│   │   ├── pcie/         # PCIe interface tests
│   │   └── mdio/         # MDIO interface tests
│   └── utils/            # Utility functions
├── scripts/              # Shell scripts and utilities
├── tests/               # Test definitions and configurations
├── docs/                # Documentation
└── ci/                  # CI/CD configuration files
```

## Building

Inside the development container:
```bash
mkdir -p build
cd build
cmake ..
make
```

## Running Tests

Inside the development container:
```bash
./scripts/run_tests.sh
```

## Contributing

We welcome contributions! Here's how you can help:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Commit Guidelines

- Use clear and descriptive commit messages
- Reference issues and pull requests in commit messages
- Follow the existing code style

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any issues or have questions, please:
- Open an issue
- Join our community chat
- Contact the maintainers

---

Made with ❤️ by the Diagnostics Framework Team
