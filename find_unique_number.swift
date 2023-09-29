func findUniq(_ arr: [Int]) -> Int {
    var freq: [Int: Int] = [:]
    
    for i in arr {
        freq[i, default: 0] += 1
    }
    
    for (key, val) in freq {
        if val == 1 {
            return key
        }
    }
    
    return 0
}
