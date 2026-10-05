cmake_minimum_required(VERSION 3.10)
project(calculator LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Бібліотека (static; для shared замініть STATIC на SHARED)
add_library(calculator STATIC calculator.cpp calculator.h)
target_include_directories(calculator PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Виконуваний файл
add_executable(calc_app main.cpp)
target_link_libraries(calc_app PRIVATE calculator)
