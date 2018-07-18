#!/bin/sh

echo set -x PATH /usr/local/eosio/bin \$PATH > ~/.config/fish/config.fish

cp -f config.ini /root/.local/share/eosio/nodeos/config/
