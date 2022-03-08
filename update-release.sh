#!/bin/bash
TAG=$(curl -s https://api.github.com/repos/infuseai/artiv/releases |  jq -r '.[0].tag_name')
echo "Tag: ${TAG}"

OUT=Formula/artiv.rb
cat ./artiv.rb.tmpl | sed "s|ARTIV_TAG|${TAG}|g" > ${OUT}

echo "Formula: "
cat "${OUT}"

