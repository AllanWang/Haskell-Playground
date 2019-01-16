#!/usr/bin/env bash

# Make sure you are on a trottier computer, such as cs-1.cs.mcgill.ca
# The updated haskell binaries are located at /usr/local/pkgs/haskell
# With stack version 1.9.3
# If you do not have enough disk quota, you can use /mnt/local

STACK_ROOT=/mnt/local /usr/local/pkgs/haskell/stack-1.9.3-linux-x86_64/stack run --verbose --allow-different-user