#!/usr/bin/env python3
"""Validate an XLSForm with pyxform. Exits 1 on errors or warnings."""
import os
import sys

from pyxform.errors import PyXFormError
from pyxform.xls2xform import convert

IN_GHA = os.environ.get("GITHUB_ACTIONS") == "true"


def gha_warn(msg: str) -> None:
    print(f"::warning::{msg}" if IN_GHA else f"WARNING: {msg}")


def gha_error(msg: str) -> None:
    print(f"::error::{msg}" if IN_GHA else f"ERROR: {msg}")


if len(sys.argv) != 2:
    print("Usage: validate_xlsform.py <path/to/form.xlsx>", file=sys.stderr)
    sys.exit(1)

xlsform = sys.argv[1]
warnings = []
error = None

try:
    convert(xlsform=xlsform, validate=False, warnings=warnings)
except PyXFormError as e:
    error = e

for w in warnings:
    gha_warn(str(w))

if error:
    gha_error(str(error))
    sys.exit(1)

if warnings:
    sys.exit(1)

print("OK — no issues found.")
