## C++ stuff reminder

### Compile C++ 11 w/ g++

    $ g++ -std=c++11 my.cpp

### Compile and run separate header and implementation

    $ ls
    a.out   foo.cpp   foo.hpp    main.cpp

    $ g++ main.cpp foo.cpp
    $ ./a.out

### Supress warnings

    $ cfg --no-werrors
    $ bld


### Compile future C++ versions

 * needs independent llvm installation
 * like so: `~/bin/clang+llvm-8.0.0-x86_64-apple-darwin/bin/clang++ --std=c++17 Main.cpp Data.cpp Module.cpp Network.cpp`