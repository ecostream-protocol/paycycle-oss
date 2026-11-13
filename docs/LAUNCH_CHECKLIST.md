# Launch checklist (do these in order)

- [ ] Replace `YOUR-ORG/YOUR-REPO` everywhere (README, CONTRIBUTING, docs/WAVE_APPLICATION.md)
- [ ] Upload the files, including `.github`. No `.env` files
- [ ] **Actions tab: CI is green** (fix anything red first)
- [ ] Settings → Pages → Source: **GitHub Actions**, then run the "Deploy demo" workflow
- [ ] Put the live demo link in the README ("Live demo" line) and in the repository About box
- [ ] Run `scripts/testnet-setup.sh`, then put the contract id in the README
- [ ] Add the repository description and topics (see the earlier message)
- [ ] Create the 12 issues (`docs/ISSUES.md` or `scripts/create-issues.sh`)
- [ ] Make a few small real commits over several days (typo, docs, small test)
- [ ] Apply the repository on Drips Wave (Stellar program) using `docs/WAVE_APPLICATION.md`
- [ ] Answer every comment and email within a day
