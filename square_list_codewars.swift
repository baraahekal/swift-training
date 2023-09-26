func squareSum(_ vals: [Int]) -> Int {
    var sum: Int = 0
    
    for val in vals {
        sum += val * val
    }
    
    return sum
}

print(squareSum([1,2,2]))


