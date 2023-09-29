import Foundation


func divisors(_ n: UInt32) -> UInt32 {
    var count: UInt32 = 0
    
    var i: UInt32 = 1
    while i * i < n {
        count += (n % i == 0 ? 2 : 0)
        i += 1
    }
  
    if i * i == n {
        count += 1
    }
    
    return count
}
