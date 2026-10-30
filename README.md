# homebrew-tap

Homebrew formulae for [codingconcepts](https://github.com/codingconcepts) tools.

```sh
brew install codingconcepts/tap/edg
brew install codingconcepts/tap/nsp
```

`brew tap codingconcepts/tap` first is optional; the fully qualified name taps it for you.

| Formula | Tool | Source |
| --- | --- | --- |
| `edg` | Realistic test data generator | [edg.run](https://edg.run) |
| `nsp` | Let someone else drive your slides | [nextslideplease.run](https://nextslideplease.run) |

## Updating

Nothing here is edited by hand. Each formula is written by the release workflow in its own repository, which pushes to this one on a tag:

- `edg` - [codingconcepts/edg](https://github.com/codingconcepts/edg), `.github/workflows/release.yml`
- `nsp` - [codingconcepts/next-slide-please](https://github.com/codingconcepts/next-slide-please), `.github/workflows/release.yml`

Both workflows build the binaries, checksum them, rewrite their formula with the new version and `sha256` values, and commit as `github-actions[bot]`. They authenticate with a `RELEASE_PAT` secret held in the source repository - a personal access token with `contents: write` here.

A formula appears in this tap the first time its tool is released, so editing one by hand only risks it being overwritten, or worse, pinning a `sha256` that does not match what is published.
