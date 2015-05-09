#!/bin/bash
# Source https://github.com/cadorn/bash.origin
. "$HOME/.bash.origin"
function init {
	eval BO_SELF_BASH_SOURCE="$BO_READ_SELF_BASH_SOURCE"
	BO_deriveSelfDir ___TMP___ "$BO_SELF_BASH_SOURCE"
	local __BO_DIR__="$___TMP___"


	pushd "$__BO_DIR__/.." > /dev/null
		if [ ! -e ".pgs/.provisioned" ]; then
			BO_callPlugin "bash.origin.pinf@0.1.2" ensure genesis $@
		fi
	popd > /dev/null
}
init $@