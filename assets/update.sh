#!/bin/bash

echo

./clean.sh

echo
echo "Rebuilding package list..."
echo "--------------------------"

rm -f Packages*
dpkg-scanpackages -m ./debs /var/mobile/Theme > Packages
bzip2 -k Packages
./dpkg-scanpackages -m ./debians/ /var/mobile/Theme > Packages

echo "--------------------------"
echo "Done."
echo
