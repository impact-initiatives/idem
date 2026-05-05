Closes #<ISSUE_NUMBER>

## Summary

Release `idem v<VERSION>` — brief description of what this release brings.

## Commit sequence

Verify the branch commits are in this order:

- [ ] `fix(release):` code fence fix (if applicable)
- [ ] `chore(release):` release tooling changes (if applicable)
- [ ] `chore(release): update NEWS.md for <VERSION>`
- [ ] `docs:` documentation and README
- [ ] `chore(release): bump version to <VERSION>` — last commit

## Reviewer checklist

- [ ] `NEWS.md` — entry is accurate, well-written, and covers all user-facing changes
- [ ] `DESCRIPTION` — `Version:` field matches the PR title
- [ ] `README.md` — installation tag points to `v<VERSION>`
- [ ] `man/` — documentation is up to date with the current source
- [ ] Merge strategy — **merge commit, not squash**
