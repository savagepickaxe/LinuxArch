#!/bin/bash
if projects=$(ddev list --json 2>/dev/null); then
  echo "$projects" | jq -r '.[].name + " (" + .[].status + ")"' | paste -sd ", "
else
  echo "DDEV: arrêté"
fi   
