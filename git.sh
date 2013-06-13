#!/usr/bin/env bash

# Git settings and aliases

git config --global color.ui true
git config --global --add alias.root '!pwd'
git config --global --add alias.ci "commit"

git config --global user.name "Thomas B Homburg"
git config --global user.email "thomas@homburg.dk"

git config --global push.default simple
