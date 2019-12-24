#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.hashsharecoincore/hashsharecoind.pid file instead
hashsharecoin_pid=$(<~/.hashsharecoincore/testnet3/hashsharecoind.pid)
sudo gdb -batch -ex "source debug.gdb" hashsharecoind ${hashsharecoin_pid}
