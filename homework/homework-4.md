# Homework 4

1. In the Cairo Playground use the Hello playground example

    - Run the program and see the output in the console
    - Debug the program, look at the memory and the watch window, do you understand how the output_ptr is being used?
2. Install Protostar
3. Complete exercises 1 to 7 in the current repo (/excercises/).

# Solutions

1.  

    ```
        10
        20
        410
    ```

It looks to me that output_ptr is incremented once every time some new element is to be printed as output: the compiler (or main's caller, if there is one such function) sees the pointer's value before and after the call to main() --> the memory region delimited by these 2 values is what's printed as output

2. Done

3. Excercise solutions: find them under `/starknet/exercises/cairo`