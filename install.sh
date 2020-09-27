#!/bin/bash
source ./zshrc
for file in install/*.sh; do
    echo "./$file"
    ./$file
done

