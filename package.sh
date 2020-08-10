#!/bin/bash

release=0.1
release_dir="welcome-r$release"
base="$release_dir/welcome"

mkdir -p $base
mkdir -p $base/launcher
mkdir -p $base/lunar
#mkdir -p $base/src

cp ChangeLog $base
cp LICENSE $base
cp README.md $base
cp welcome.bas $base
#cp -R resources/* $base/resources
cp -R launcher/* $base/launcher
cp -R lunar/* $base/lunar
#cp docs/sptools.pdf $base

cd $release_dir
zip -r ../$release_dir.zip welcome
cd ..
