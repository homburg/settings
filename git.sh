#!/usr/bin/env bash

# Git settings and aliases

git config --global color.ui true
git config --global --add alias.root '!pwd'
git config --global --add alias.ci "commit"
git config --global --add alias.co "checkout"
git config --global --add alias.cl "clone"
git config --global --add alias.st "status"
git config --global --add alias.s "status"

git config --global user.name "Thomas B Homburg"
git config --global user.email "thomas@homburg.dk"

git config --global push.default simple
