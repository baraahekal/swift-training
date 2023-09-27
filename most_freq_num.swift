func most_freq_number(_ lst: [Int]) -> Int {
    var freq = [Int: Int]()
    
    for element in lst {
        freq[element, default: 0] += 1
    }
    
    var maxFreq = Int.min
    var maxVal = 0
    for (key, value) in freq {
        if maxFreq < value {
            maxFreq = value
            maxVal = key
        }
    }
    
    return maxVal
}

print(most_freq_number([1,2,3,1,2,2]))

