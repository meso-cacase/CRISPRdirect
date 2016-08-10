#!/bin/bash

# kill current jellyfish
/backup/bin/grep_and_kill.pl '^approx.*jellyfishd.*pl'

# sleep...
/bin/sleep 3

# start jellyfish
JELFISH="/backup/bin/jellyfishd_s00.pl"
HASHDIR="/ssd/jellyhash"
LOGDIR="/ssd/jellylog"
