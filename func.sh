#!/bin/sh

demoFun(){
	echo "some log!"
	echo "$#"
}

echo "start-work"
demoFun 1 2 3
echo "end-work"
