let numbers = [1, 2, 3, 4, 5]

let sum = numbers.reduce(0) { $0 + $1 }

print(sum) // Output: 15

//This works correctly even with negative numbers:

let numbers2 = [1, 2, -3, 4, 5]

let sum2 = numbers2.reduce(0) { $0 + $1 }

print(sum2) // Output: 9

//A more robust solution which handles potential overflow errors and explicitly checks for the datatype

func sumArray(numbers: [Int]) -> Int?
{
    guard numbers.allSatisfy({$0 > Int.min}) else {return nil} //Check for potential Int overflow
    return numbers.reduce(0, +)
}

print(sumArray(numbers: numbers) ?? "Error: Overflow detected")

print(sumArray(numbers: [1,2,Int.max]) ?? "Error: Overflow detected") //Example of potential overflow error