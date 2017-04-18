#!/usr/bin/env bash
# cron script to disarm baloo file indexer, suggested use is daily

find /usr/bin -name "*baloo*" -print0 | xargs -P $(nproc) -n 1 -0 xz -9evf
chmod -v a-x /usr/bin/*baloo*
