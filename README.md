# Rev-socket

[![License: GNU GPL](https://img.shields.io/badge/License-GNU%20GPL-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Overview

Rev-socket is an open-source Docker image that provides a reverse tunnel to expose the remote Docker socket as a local socket. It achieves this by using SSH as a socket and has the capability to use OpenVPN as a tunnel to enhance security.

## Features

- Reverse tunneling of the remote Docker socket
- Secure communication using SSH-based socket
- Enhanced security with OpenVPN integration

## Usage

To use rev-socket, follow these steps:

1. Install Docker on your local machine.
2. Pull the rev-socket image from the Docker Hub.
3. Configure the necessary environment variables by creating a `.env` file in the root directory of the project. The following variables are available:
    - `SSH_HOST`: The hostname or IP address of the remote SSH server.
    - `SSH_PORT`: The port number of the remote SSH server.
    - `SSH_USERNAME`: The username for SSH authentication.
    - `SSH_PRIVATE_KEY`: The private key file for SSH authentication.
    - `OPENVPN_ENABLED`: Set this variable to `true` if you want to enable OpenVPN integration.
    - `OPENVPN_CONFIG`: The path to the OpenVPN configuration file.
4. Run the Docker container with the appropriate settings.

For detailed instructions, please refer to the [documentation](https://github.com/lucasgolino/rev-socket/wiki).

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for more details.

## Contributing

Contributions are welcome! Please read the [CONTRIBUTING](CONTRIBUTING.md) file for guidelines on how to contribute to this project.

## Issues

If you encounter any issues or have any questions, please open an issue on the [issue tracker](https://github.com/lucasgolino/rev-socket/issues).
