#!/bin/bash
TAG=$(curl -s https://api.github.com/repos/infuseai/artivc/releases |  jq -r '.[0].tag_name')
echo "Tag: ${TAG}"

OUT=Formula/artivc.rb
cat ./artivc.rb.tmpl | sed "s|ARTIVC_TAG|${TAG}|g" > ${OUT}

echo "Formula: "
cat "${OUT}"

