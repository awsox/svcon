# svcon

`svcon` is a lightweight and efficient script designed to streamline service management and configuration on your Linux for pntest. It simplifies tasks like installation, configuration, and maintenance of services with minimal effort. / new usefuk tools will be added soon

---

## Features

- **Simple Installation:** Quick and hassle-free setup.
- **Lightweight:** No additional dependencies required.
- **Cross-Platform Compatibility:** Works on most Linux distributions.
- **Efficient:** Automates tedious service management tasks.

---

## Installation

To install and run `svcon`, follow the steps below:

1. Download the script:
   ```bash
   wget https://raw.githubusercontent.com/awsox/svcon/refs/heads/main/oxsvcon.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x oxsvcon.sh
   ```

3. Convert script file format (if necessary):
   ```bash
   sed -i 's/\r$//' oxsvcon.sh
   ```

4. Run the script with root permissions:
   ```bash
   sudo ./oxsvcon.sh
   ```

---

## Usage

After installation, `svcon` is ready to manage your system's services. Follow the prompts and instructions provided by the script to perform various tasks like starting, stopping, or configuring services.

---

## Prerequisites

Ensure the following requirements are met before running the script:

- Linux-based operating system
- `wget` installed (for downloading the script)
- Root privileges (for script execution)

---

## Contributing

We welcome contributions to improve `svcon`. To contribute:

1. Fork the repository on GitHub.
2. Create a new branch for your feature or bug fix.
3. Submit a pull request with a detailed description of your changes.

---

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as per the terms of the license.

---

## Support

If you encounter any issues or have questions, feel free to open an issue on the [GitHub repository](https://github.com/awsox/svcon/issues).

---

## Acknowledgements

Special thanks to all contributors and users for supporting this project. Your feedback is invaluable!
