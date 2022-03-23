# Cmake



```cmake
# 生成静态库 hello_library
add_library(hello_library STATIC 
    src/Hello.cpp
)
#动态库
add_library(hello_library SHARED 
    src/Hello.cpp
)
#动静态一样的写法
target_include_directories(hello_library
    PUBLIC 
        ${PROJECT_SOURCE_DIR}/include
)
#生成可执行文件
add_executable(hello_binary 
    src/main.cpp
)
#连接到静态库hello_library
target_link_libraries( hello_binary
    PRIVATE 
        hello_library
)
#连接.h文件
target_include_directories(hello_headers
    PRIVATE 
        ${PROJECT_SOURCE_DIR}/include
)
```

```cmake
# Binaries可执行文件放到bin
install (TARGETS cmake_examples_inst_bin
    DESTINATION bin)

# Library动态库放到lib
# Note: may not work on windows
install (TARGETS cmake_examples_inst
    LIBRARY DESTINATION lib)

# Header files .h文件放到include
install(DIRECTORY ${PROJECT_SOURCE_DIR}/include/ 
    DESTINATION include)

# Config 配置文件放到etc
install (FILES cmake-examples.conf
    DESTINATION etc)
   #添加编译flag 
   target_compile_definitions(cmake_examples_compile_flags 
   PRIVATE EX3
	   EX4
)
find_package(Boost 1.46.1 REQUIRED COMPONENTS filesystem system)
 XXX_FOUND #XXX为库名
```

```shell
 cmake .. -DCMAKE_C_COMPILER=clang-3.6 -DCMAKE_CXX_COMPILER=clang++-3.6 
cmake .. -G Ninja
```

