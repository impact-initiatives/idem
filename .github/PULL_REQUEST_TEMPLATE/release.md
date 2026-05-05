## Release issue

Closes #<ISSUE_NUMBER>

## Summary

Release `idem v<VERSION>` — brief description of what this release brings.

## Reviewer checklist

**Code & tests**

- [ ] R CMD check — 0 errors, 0 warnings, 0 notes (`devtools::check()`)
- [ ] Full test suite passes (`devtools::test()`)
- [ ] No broken URLs (`urlchecker::url_check()`)

**Documentation**

- [ ] `NEWS.md` — entry is accurate, covers all user-facing changes, written from the user's perspective (not commit-log style)
- [ ] `man/` — all exported functions documented; examples are runnable
- [ ] `README.md` — built from `README.Rmd` (`devtools::build_readme()`), installation tag points to `v<VERSION>`
- [ ] pkgdown site builds without errors (`pkgdown::build_site()`)

**Package metadata**

- [ ] `DESCRIPTION` — `Version:` matches the PR title

**If this PR includes code changes**

- [ ] New and changed behaviour is covered by tests; edge cases are included
- [ ] Test coverage has not regressed
- [ ] New exported functions have complete roxygen documentation with runnable examples
- [ ] No example is wrapped in `\dontrun{}` unless it genuinely cannot run in the check environment

**Merge**

- [ ] Merge strategy — **merge commit, not squash** (preserves individual conventional commits for the next changelog)
