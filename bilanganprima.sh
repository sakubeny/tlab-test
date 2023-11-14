#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 <angka>"
  exit 1
fi

angka=$1
prima=true

if [ $angka -le 1 ]; then
  prima=false
elif [ $angka -eq 2 ]; then
  prima=true
else
  for ((i=2; i<=$angka/2; i++)); do
    if [ $((angka % i)) -eq 0 ]; then
      prima=false
      break
    fi
  done
fi

if $prima; then
  echo "bilangan ini adalah bilangan prima"
else
  echo "bilangan ini bukan bilangan prima"
fi
