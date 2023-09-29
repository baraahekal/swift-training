func findUniq(_ arr: [Int]) -> Int {
    if arr[0] != arr[3] {
        if arr[0] == arr[1] {
            return arr[3]
        }
        else {
            return arr[0]
        }
    }
    
    for (idx, val) in arr.enumerated() {
        if arr[idx] != arr[idx + 1] {
            return arr[idx + 1]
        }
    }
    
    return 0
}
