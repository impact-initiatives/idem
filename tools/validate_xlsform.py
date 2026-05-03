#!/usr/bin/env python3
"""Validate an XLSForm with pyxform. Exits 1 on errors or warnings."""
import sys

from pyxform.errors import PyXFormError
from pyxform.xls2xform import convert

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
    print(f"WARNING: {w}")

if error:
    print(f"ERROR: {error}")
    sys.exit(1)

if warnings:
    sys.exit(1)

print("OK — no issues found.")
