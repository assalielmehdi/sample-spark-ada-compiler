#!/bin/zsh

# ./test_script.sh 2>/dev/null

echo "Execution of samples in './assets/code_samples' directory:" > ./target/out
for entry in "./assets/code_samples"/*
do
  echo "\n\nFile '$entry' execution:" >> ./target/out
  ./target/main < $entry >> ./target/out || echo "Execution error ! (segmentation fault ?)" >> ./target/out
done

