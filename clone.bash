#!/bin/bash

# Get the source and destination directories
source_dir="helm-guestbook-1"
dest_dir="helm-guestbook-"

# Loop 5 times
for i in {2..50}; do


  # Clone the directory
  cp -r "$source_dir" "$dest_dir"$i

  # Print a success message
  echo "Directory cloned successfully (iteration $i)."
done