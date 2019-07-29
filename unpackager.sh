#!/bin/sh

# variable
_path_now=$(pwd)
_target_file=$1

if test -f ${_target_file}
then
    :
else
    exit 0
fi 

__file_name=$(basename ${_target_file})
_target_file="$(cd $(dirname ${_target_file}); pwd)/${__file_name}"; cd ${_path_now}





# work
tar -xzvf ${_target_file} 