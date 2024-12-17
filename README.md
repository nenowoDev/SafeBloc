# SafeBlocc

This is a project set up with Hardhat for Ethereum development. 

## Prerequisites

Make sure you have the following installed on your system:

- [Node.js](https://nodejs.org/) (v16.0 or higher)
- [npm](https://www.npmjs.com/) (comes with Node.js)

## Getting Started

### 1. Install Dependencies

In your project directory, run the following command to install the required dependencies:

```bash
npm install
```

### 2. Running Hardhat

To run the Hardhat development environment, use the following command:

```bash
npx hardhat
```

This will start the Hardhat console and allow you to interact with your contracts and deploy them.

## Project Structure

- `contracts/` - Smart contracts directory
- `scripts/` - Deployment scripts
- `test/` - Test files 

## Additional Information



⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⣼⠃⣿⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡜⡇⠀⣸⣼⣶⣿⡆⢱⡀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⡼⢰⣿⣼⢯⡿⡏⢸⣧⢸⣷⢀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣾⠃⣾⠟⣾⣿⡾⠸⡌⣿⠰⣞⣿⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢠⢛⡏⣸⠁⣼⡿⢣⢧⠀⣿⣿⣇⡇⣿⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢹⣤⡀⡼⣸⡇⠁⡔⣿⡇⢸⣼⠀⣿⣿⣟⣆⡇⢻⣿⡇⠀⣴⠁⠀⠀⠀⠀⠀
⠀⠀⡿⣿⡇⣿⣧⡴⣿⣿⢀⡿⣏⣇⣿⣼⣿⣾⢀⣿⣿⣧⣾⡇⠀⠀⠀⠀⠀⠀
⠀⣀⠱⢸⣇⠹⣿⣿⠿⣿⡀⣿⡷⣿⣿⣿⣾⣧⣾⣿⣿⠟⣼⠀⠀⠀⠀⠀⠀⠀
⠀⠹⡟⢇⠹⣶⣻⠃⠀⠘⠣⣹⣿⡏⡿⠉⠀⣞⢿⢟⣡⣾⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢷⠈⢳⣾⣿⣰⠀⠀⠀⠘⢿⠞⠀⠀⠀⣟⣾⣿⣿⠟⠀⠀⠀⠀ WE SAIYANS HAVE NO LIMITS
⠀⠀⠈⢣⣀⡿⣿⣏⢄⡀⢀⡀⠈⠀⢀⣠⡼⣻⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠙⠫⣽⣼⣏⠳⣚⣦⣜⣄⣐⣵⡿⣽⢳⣯⡼⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠉⠻⡄⠈⠙⠙⢹⡏⠉⠉⢩⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢱⣀⠀⠀⠸⡗⠀⣠⣾⣟⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠠⣤⢵⣤⣀⣠⣶⣿⣿⡿⠗⣲⣦⣄⣀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⢢⣽⣿⣿⠿⣋⣵⣾⣿⣿⣿⢿⣛⣯⣽⣿⣤⡀⠀⠀
⠀⠀⠀⣀⠤⣤⣶⣿⣿⣿⣿⡿⢋⡵⠚⢹⢿⣿⠟⣩⠖⣋⠔⣢⢘⣿⣿⣿⣷⡀
⠀⠀⢸⣏⠘⠿⠿⠿⢟⣫⠵⠊⠁⠀⠀⣼⣹⢏⣾⠏⢼⣆⠭⣐⢣⣿⣿⢹⣿⡇
⠀⠀⠎⢀⠟⣶⢾⠋⠁⠀⢠⠢⢐⣋⣲⡷⣻⢸⣿⣼⣾⣿⣷⣤⣿⣿⣿⣾⣿⠁
⠀⡼⠀⡌⢠⡿⡎⠀⠀⠀⠂⠀⠸⡀⣿⠳⣍⣧⡿⢋⡝⣿⣿⣿⣿⣿⣿⣿⣿⡆
⠀⢣⠀⣤⡿⢻⣿⣷⣯⣶⣆⠤⡀⠀⣣⢿⡾⣻⡇⠣⡜⣸⣿⣿⣿⣿⣿⣿⣿⠃
