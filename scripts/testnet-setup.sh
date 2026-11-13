#!/usr/bin/env bash
# One-command testnet setup: keys, test USDC, contract deploy, web/.env.
# Requires: stellar CLI (https://developers.stellar.org/docs/tools/cli) and
#           rustup target add wasm32-unknown-unknown
set -euo pipefail
NETWORK=testnet
cd "$(dirname "$0")/.."

command -v stellar >/dev/null || { echo "Install the stellar CLI first."; exit 1; }

for k in admin keeper; do
  stellar keys address "$k" >/dev/null 2>&1 || stellar keys generate "$k" --network "$NETWORK" --fund
done
ADMIN_ADDR=$(stellar keys address admin)
ASSET="USDC:$ADMIN_ADDR"

TOKEN_ID=$(stellar contract asset deploy --asset "$ASSET" --source admin --network "$NETWORK" 2>/dev/null \
  || stellar contract id asset --asset "$ASSET" --network "$NETWORK")

OUT=$(ADMIN=admin ./scripts/deploy.sh)
echo "$OUT"
CONTRACT_ID=$(echo "$OUT" | grep '^VITE_CONTRACT_ID=' | tail -1 | cut -d= -f2)
[ -n "$CONTRACT_ID" ] || { echo "Could not read the contract id from deploy output."; exit 1; }

cat > web/.env <<ENV
VITE_CONTRACT_ID=$CONTRACT_ID
VITE_TOKEN_ID=$TOKEN_ID
VITE_RPC_URL=https://soroban-testnet.stellar.org
VITE_NETWORK_PASSPHRASE=Test SDF Network ; September 2015
ENV

echo
echo "Done. Contract: $CONTRACT_ID   Test USDC: $TOKEN_ID"
echo "Next:"
echo "  1. In Freighter (Testnet) add a trustline to $ASSET and fund it from the 'admin' account"
echo "     (Stellar Lab payment: https://laboratory.stellar.org)."
echo "  2. npm run dev"
echo "  3. Keeper: CONTRACT_ID=$CONTRACT_ID KEEPER_SECRET=\$(stellar keys show keeper) npm run keeper"
echo "Put the contract id in the README so reviewers can verify it on stellar.expert."
