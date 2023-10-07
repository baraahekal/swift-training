func countDuplicates(_ s:String) -> Int {
    var string = s.lowercased()
    var mp: [Character: Int] = [:]
    
    for c in string {
        mp[c, default: 0] += 1
    }
    
    var ct = 0
    for val in mp.values {
        if val > 1 {
            ct += 1
        }
    }
    
    return ct
}

print(countDuplicates("Indivisibilities")) // 2 'i' and 's'

