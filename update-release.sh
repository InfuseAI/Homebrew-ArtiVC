#!/bin/bash
TAG=$(curl -s https://api.github.com/repos/infuseai/artiv/releases |  jq -r '.[0].tag_name')
echo "Tag: ${TAG}"

URL="https://github.com/InfuseAI/ArtiV/releases/download/${TAG}/ArtiV-${TAG}-darwin-amd64.tar.gz"
echo "Url: ${URL}"
echo "Formula: "

SHA256=$(curl -sL "$URL" | sha256sum | cut -f1 -d' ')
OUT=Formula/artiv.rb
cat ./artiv.rb.tmpl | sed "s|URL|${URL}|g" | sed "s|SHA256|${SHA256}|g" > ${OUT}
cat "${OUT}"

