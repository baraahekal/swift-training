# Closures in Swift part 2

## 1- Using closures as parameters when they accept parameters
- Lets break down `do_operation` function <br>
It takes two parameters:
1. `num` which is an integer number 
2. `operation` which is a closure with no params and returns a `String`

```swift
func do_operation(num: Int, operation: () -> String) {
    print("Op \(num)- \(operation())")
}

do_operation(num: 1) {
    "Hello World!"
}

```
> **Danger**
> We are calling `do operation` function with `num: 1` then opening a curly brackets to pass the closure value which is returning "Hello World!" 

another way to call `do operation`:
```swift
do_operation(num: 1) { () -> String in
    return "Hello World!"
}
```