#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
  cd gpg
  openssl aes-256-cbc -K $encrypted_602af71d785c_key -iv $encrypted_602af71d785c_iv -in codesigning.asc.enc -out codesigning.asc -d
  gpg --fast-import codesigning.asc
fi