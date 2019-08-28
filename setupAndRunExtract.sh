#!/bin/bash
set -x
source=/workspace/$gitsource
export APPSODY_MOUNT_PROJECT=${source}
echo APPSODY_MOUNT_PROJECT=${APPSODY_MOUNT_PROJECT}
# mkdir /workspace/extracted
cd /workspace/$gitsource
ls -latr
appsody extract --buildah --target-dir /workspace/extracted -v
ls -latr /workspace/extracted
