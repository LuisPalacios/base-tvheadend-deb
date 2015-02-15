#!/bin/bash
#

# Script to build tvheadend_3.9.XXXX~yyyyyyyy~precise_amd64.deb so it can be copied
# and used by the luispa/base-tvheadend container.
#
docker run -t -i -v $(pwd):/output luispa/base-tvheadend-deb /bin/bash
