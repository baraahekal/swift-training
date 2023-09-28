# Closures in Swift part 2

## 1- Using closures as parameters when they accept parameters
Lets break it down `do_operation`function
- it takes to parameters
1. `num` which is an integer number 
2. `operation` which is a closure with no params and returning a `String`

```swift
func do_operation(num: Int, operation: () -> String) {
    print("Op \(num)- \(operation())")
}

do_operation(num: 1) {
    "Hello World!"
}

```