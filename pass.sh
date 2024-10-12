#!/bin/bash

# Query Fields
FOLDER=ansible
LABEL=vault

case "$OSTYPE" in
  linux*)
    kwallet-query -f "$FOLDER" -r "$LABEL" kdewallet
  ;;
  darwin*)
    /usr/bin/security find-generic-password -w -a "$FOLDER" -l "$LABEL"
