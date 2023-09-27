# Closures in Swift part #1

Swift lets us use functions just like any other type such as strings and integers. This means you can 
create a function and assign it to a variable, call that function using that variable, and even pass 
that function into other functions as parameters.

Functions used in this way are called closures, and although they work like functions they are 
written a little differently.

## Creating basic closures
That effectively creates a function without a name, and assigns that function to print_hello. 
You can now call print_hello() as if it were a regular function, like this:

```swift
let print_hello = {
    print("Hello world")
}

print_hello()
```

## Accepting parameters in a closure
Same as regular function but the main difference is in closures you musn't use label name when 
calling it:

```swift
let print_some_math = { (number: Int) in
    print("\(number * 2) is the double of \(number)")
}

print_some_math(2) ✅
```
```swift
let print_some_math = { (number: Int) in
    print("\(number * 2) is the double of \(number)")
}

print_some_math(number: 2) ❌
```
## Returning values from a closure
We can specify closure return type after () just like the regular function

```swift
let is_prime = { (number: Int) -> Bool in
    if number == 2 {
       return true
    }

    for i in 2..<number where i * i < number {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}

print(is_prime(71))
```

## Trailing closure syntax
We can do it if closure was the last parameter in the called function, reminded me with defaulf 
parameters

### Single parameter:
```swift
func travel(action: () -> Void) {
    print("Iam ready to go")
    action()
    print("Ive arrived")
}

travel() {
    print("Iam omw")
}
```
### Two parameters:
```swift
func travel(number: Int, action: () -> Void) {
    print("Iam ready to go", number)
    action()
    print("Ive arrived")
}

travel(number: 1) {
    print("Iam omw")
}
```
