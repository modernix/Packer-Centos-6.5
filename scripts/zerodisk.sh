#!/bin/bash -eux

# Zero out the free space to save space in the final image, I'm told this helps.
echo "Saving diskspace... I'm told this helps..."
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
sync
sync
sync