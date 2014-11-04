## C++ stuff reminder

### Compile C++ 11 w/ g++

    $ g++ -std=c++11 my.cpp

### Compile and run separate header and implementation

    $ ls
    a.out   foo.cpp   foo.hpp    main.cpp

    $ g++ main.cpp foo.cpp
    $ ./a.out
