# VaultX

A decentralized vault application for secure STX token storage on the Stacks blockchain.

## Features

- Deposit STX tokens into your personal vault
- Withdraw tokens at any time
- Optional time-lock for added security
- View vault statistics and transaction history
- Non-custodial design

## Project Structure

```
VaultX/
├── contracts/           # Clarity smart contracts
│   └── vault.clar      # Main vault contract
├── tests/              # Contract tests
│   └── vault_test.ts   # Vault contract tests
├── frontend/           # React frontend
│   ├── src/
│   │   ├── components/ # React components
│   │   ├── context/    # React context providers
│   │   ├── hooks/      # Custom React hooks
│   │   ├── utils/      # Utility functions
│   │   └── styles/     # CSS styles
│   └── public/         # Static assets
├── settings/           # Clarinet network settings
└── Clarinet.toml       # Clarinet configuration
```

## Getting Started

### Prerequisites

- Node.js 18+
- Clarinet (for smart contract development)
- Stacks Wallet (Leather or Xverse)

### Installation

1. Clone the repository
2. Install frontend dependencies:
   ```bash
   cd frontend
   npm install
   ```

### Development

Start the frontend development server:
```bash
npm run dev
```

Run contract tests:
```bash
npm run test:contracts
```

Check contract syntax:
```bash
npm run check:contracts
```

## Smart Contract

The vault contract provides the following functions:

### Public Functions

- `deposit(amount)` - Deposit STX into vault
- `deposit-with-lock(amount, lock-blocks)` - Deposit with time-lock
- `withdraw(amount)` - Withdraw STX from vault
- `withdraw-all()` - Withdraw all STX from vault
- `extend-lock(additional-blocks)` - Extend lock period

### Read-Only Functions

- `get-vault(user)` - Get vault details
- `get-balance(user)` - Get user balance
- `get-total-locked()` - Get total STX locked
- `can-withdraw(user)` - Check if user can withdraw

## License

MIT
