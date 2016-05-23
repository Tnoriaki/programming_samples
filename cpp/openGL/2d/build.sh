#!/usr/bin/env bash

if [ -e build ];then rm -rf build;fi
mkdir build;cd build;
cmake ..
make; if ! $(exit $?);then EXIT_STATUS=1;fi
cd ..

./build/main& if ! $(exit $?);then EXIT_STATUS=1;fi
./build/main2& if ! $(exit $?);then EXIT_STATUS=1;fi
./build/main3& if ! $(exit $?);then EXIT_STATUS=1;fi

exit $EXIT_STATUS
