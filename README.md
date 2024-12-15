# Swift Reduce Function: Handling Negative Numbers

This repository demonstrates a potential edge case in Swift's `reduce` function when working with arrays containing negative numbers. While the `reduce` function is generally robust, using the '+' operator directly within the reduce function without explicitly checking for edge cases can lead to unexpected results.

The `bug.swift` file shows an example where the sum of an array containing negative numbers is calculated incorrectly.  The `bugSolution.swift` file demonstrates a corrected version that handles negative numbers effectively.

This example highlights the importance of careful consideration of input data types and potential error handling when using higher-order functions like `reduce`.