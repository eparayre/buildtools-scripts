#!/bin/bash

pushd $(dirname $0) > /dev/null

./clone.sh

if [[ $(uname) == 'Darwin' ]]; then
    platform=osx
else
    platform=linux
fi

cd premake-core
make -f Bootstrap.mak $platform | tee ../compile.log
cd ..

popd > /dev/null
