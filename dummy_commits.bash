#!/bin/bash

# Get the source and destination directories
source_dir="helm-guestbook-"
yaml_file_name = 

# Loop 5 times
for i in {10..50}; do
  # Clone the directory    
  sed -i "s,0.1,0.2,g" ${source_dir}$i"/values.yaml"
  sed -i "s,replicaCount: 2,replicaCount: 1,g" ${source_dir}$i"/values.yaml"
  
#   sed -i "s,IfNotPresent,Always,g" ${source_dir}$i"/values.yaml"
  
  git add .
  git commit -m "Iteration ${i}"
  git push origin
  # Print a success message
  echo "Directory updated successfully (iteration $i)."
  sleep 1
done