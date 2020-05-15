#!/bin/sh -

if ! hash stow > /dev/null 2>&1 ; then
	echo "stow isn't installed, install before proceeding" >&2
	exit 1
fi

# POSIX sh doesn't have arrays, so set args instead
set -- vim 
for dir; do
	stow $dir
	shift
done

