#!/bin/bash

echo repository.clone_url ${repository.clone_url}

git clone $clone_url repo
cd repo
/bin/piper
cd ..
rm -rf repo
