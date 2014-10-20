#!/bin/bash

git add -A

if($1) then
	git commit -m $1
else
	git commit -m "Quick Update"
fi

git push origin master