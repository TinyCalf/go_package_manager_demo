#!/bin/sh

set -e

organization="TinyCalfGoDemos"
project="go_package_manager_demo"


workspace="$PWD/build/_workspace/"
root="$PWD"
prodir="$workspace/src/github.com/$organization"

if [ ! -L "$prodir/$project" ]; then
	mkdir -p "$prodir"
	cd "$prodir"
	ln -s ../../../../../. $project
	cd "$root"
fi



GoPATH="$workspace"
export GOPATH 

cd "$prodir/$project"
PWD="$prodir/$project"

exec "$@"

