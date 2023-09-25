func most_freq_number(_ lst: [Int]) -> Int {
    var freq = Dictionary<Int, Int>()
    
    for element in lst {
        freq[element] = (freq[element] ?? 0) + 1
    }
    
    var maxFreq = Int.min
    var maxVal = -1
    for (key, value) in freq {
        if maxFreq < value {
            maxFreq = value
            maxVal = key
        }
    }
    
    return maxVal
}

print(most_freq_number([1,2,3,1,2,2]))

