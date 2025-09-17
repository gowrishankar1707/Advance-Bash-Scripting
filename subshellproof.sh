#!/usr/bin/env bash


echo "paren shell $$ current shell $BASHPID"
(
echo "Inside conditional substitution:\n paren shell $$ current shell $BASHPID"
)

echo "outside subsheel:paren shell $$ current shell $BASHPID"
