# print your code here

cmake_minimum_required(VERSION 3.10)
project(Task02)
add_executable(Task02 src/main.cpp src/fast.cpp)

enable_testing()

add_test(Test1 Task02 5)
set_tests_properties(Test1 PROPERTIES PASS_REGULAR_EXPRESSION 5)

add_test(Test2 Task02 10)
set_tests_properties(Test2 PROPERTIES PASS_REGULAR_EXPRESSION 55)