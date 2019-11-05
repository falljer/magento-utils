#!/bin/bash

cd ~

curl -sS -O https://files.magerun.net/n98-magerun2-latest.phar
curl -sS -o n98-magerun2-latest.phar.sha256 https://files.magerun.net/sha256.php?file=n98-magerun2-latest.phar
shasum -a 256 -c n98-magerun2-latest.phar.sha256

chmod +x ./n98-magerun2-latest.phar
sudo mv ./n98-magerun2-latest.phar /usr/local/bin/

echo "Installed."

