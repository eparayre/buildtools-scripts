#!/bin/bash

pushd $(dirname $0) > /dev/null

branch=release-alpha8
github=https://github.com/premake/premake-core.git

../common/clone_branch.sh $branch $github premake-core

popd > /dev/null
