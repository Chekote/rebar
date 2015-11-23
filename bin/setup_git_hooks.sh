#!/bin/bash

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

rm -rf "$ROOT"/.git/hooks
ln -s "$ROOT"/git_hooks "$ROOT"/.git/hooks
