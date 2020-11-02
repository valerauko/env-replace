#!/usr/bin/env bash

mkdir -pv "${DESTINATION:-.}";

for file in ./*; do
  echo "Writing to \"${DESTINATION:-.}/$file\"";
  cat $file | envsubst > "${DESTINATION:-.}/$file";
done
