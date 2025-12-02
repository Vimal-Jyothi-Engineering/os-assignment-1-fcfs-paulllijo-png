#!/bin/bash

# Compile
gcc src/fcfs.c -o fcfs

# Run Test Case 1
./fcfs < tests/test1.in > output1.txt
diff -q output1.txt tests/test1.out
if [ $? -ne 0 ]; then
  echo "Test Case 1 Failed"
  exit 1
fi

# Run Test Case 2
./fcfs < tests/test2.in > output2.txt
diff -q output2.txt tests/test2.out
if [ $? -ne 0 ]; then
  echo "Test Case 2 Failed"
  exit 1
fi

# Run Test Case 3
./fcfs < tests/test3.in > output3.txt
diff -q output3.txt tests/test3.out
if [ $? -ne 0 ]; then
  echo "Test Case 3 Failed"
  exit 1
fi

echo "All Tests Passed"
