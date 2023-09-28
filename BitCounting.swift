func countBits(_ n: Int) -> Int {
    var count = 0, mutable_n = n
    
    while mutable_n > 0 {
        count += mutable_n % 2
        mutable_n /= 2
    }
    
    return count
}
