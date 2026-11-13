# paycycle-sdk

TypeScript client, in-memory mock and keeper bot for the [PayCycle](../README.md) Soroban subscriptions contract.

```ts
import { PayCycleClient, MockPayCycle, runKeeperOnce, toStroops } from 'paycycle-sdk';
```

- `PayCycleClient`: talks to a deployed contract through Soroban RPC. Methods that change state take a `Signer` (`{ publicKey, signXdr }`).
- `MockPayCycle`: same rules as the contract, in memory. Use it for demos and tests (pass a fake clock to control time).
- `runKeeperOnce(api, signer)`: charges every subscription that is due.
- `toStroops` / `fromStroops`: exact decimal conversion with `bigint`, never floats.

Run the tests with `npm test`. Run a keeper with `CONTRACT_ID=C... KEEPER_SECRET=S... npm run keeper` from the repo root.
