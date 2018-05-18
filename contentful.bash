function ctf() {
  if ! [ -f ~/.contentful.json ]; then
    echo "Please define ~/.contentful.json ..."
    return 1
  fi

  SPACE_ID=($(jq "." ~/.contentful.json | jq -r '.spaceId'))
  CDA_TOKEN=($(jq "." ~/.contentful.json | jq -r '.cdaToken'))
  CONTENT_TYPE=$1

  curl "https://cdn.contentful.com/spaces/${SPACE_ID}/entries?access_token=${CDA_TOKEN}&content_type=${CONTENT_TYPE}" | jq ".items"
}
