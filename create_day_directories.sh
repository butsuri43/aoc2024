#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 start_number end_number"
    exit 1
fi

start=$1
end=$2

# Loop through the range of numbers
for (( i=start; i<=end; i++ ))
do
    # Format the number with leading zeros
    dir_name=$(printf "day%02d" $i)
    # Create the directory
    mkdir -p $dir_name
    cp --update=none notebook_template.ipynb $dir_name/$dir_name.ipynb
done

echo "Directories created from day$start to day$end"