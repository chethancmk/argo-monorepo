#!/bin/bash

# Get the source and destination directories
source_dir="helm-guestbook-"
yaml_file_name = 

# Loop 5 times
for i in {1..50}; do
  # Clone the directory    
  sed -i "s,0.1,0.2,g" ${source_dir}$i"/values.yaml"
  git add .
  git commit -m "Iteration ${i}"
  git push origin
  # Print a success message
  echo "Directory updated successfully (iteration $i)."
  sleep 10
done