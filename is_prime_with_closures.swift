let is_prime = { (number: Int) -> Bool in
    
    for i in 2..<number where i * i < number {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}

print(is_prime(70))
