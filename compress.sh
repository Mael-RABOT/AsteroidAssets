#!/bin/sh

SRC_DIR="${1:-.}"
ARCHIVE_NAME="assets_archive.tar.gz"

find "$SRC_DIR" -type f \( -iname "*.glb" -o -iname "*.hdr" -o -iname "*.png" \) \
  -print0 | tar --null -czvf "$ARCHIVE_NAME" --files-from=-

