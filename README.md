# samueltorres/homebrew-tap

This repository is a [Homebrew](https://brew.sh) tap for Samuel Torres.

## How do I install these formulae?

`brew install samueltorres/tap/<formula>`

Or tap this repository first and then install:

```bash
brew tap samueltorres/tap
brew install <formula>
```

## How do I submit a formula?

If this is your tap, add new formulae under `Formula/` and open a pull request.

### Quick local checks

```bash
brew audit --strict --online Formula/<formula>.rb
brew test Formula/<formula>.rb
```
