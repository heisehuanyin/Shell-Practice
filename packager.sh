#!/bin/sh

# variable
_path_now=$(pwd)
_target_file=$1

if test -d $_target_file
then 
    :
else
    exit
fi 

__file_name=$(basename ${_target_file})

echo __file_name

# work
cd $(dirname ${_target_file})
tar -czf "${__file_name}.tar.gz" "${__file_name}"
cd ${_path_now}