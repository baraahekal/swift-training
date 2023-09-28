# Closures in Swift part 2

## 1- Using closures as parameters when return values
- Lets break down `do_operation` function <br>
It takes two parameters:
1. `num` which is an integer number 
2. `operation` which is a closure with no params and returns a `String`

```swift
func do_operation(num: Int, operation: () -> String) {
    print("Op \(num)- \(operation())")
}

do_operation(num: 1) { () -> String in
    return "Hello World!"
}

```
> **Note**
> We are calling `do operation` function with `num: 1` then opening a curly brackets to pass the closure value which is returning "Hello World!" 

another simple way to call `do operation` using `trailing closures` technique:
```swift
do_operation(num: 1) {
    "Hello World!"
}
```

## 2- Shorthand parameter names
We just made a `travel()` function. It accepts one parameter, which is a closure that itself accepts one parameter and returns a string. That closure is then run between two calls to `print()`.

```swift
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
```

In a normal way, we will call `travel()` like this:

```swift
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
```

However Swift knows that the parameter to that closure and must be a string and its returning type also <br>so this is allowed:

```swift
travel { place in
    return "I'm going to \(place) in my car"
}
```

> Moving forward to our topic [Shorthand parameter names](#2--Shorthand-parameter-names):
Swift lets you go even shorter. Rather than writing `place in` we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.

```swift
travel {
    "I'm going to \($0) in my car"
}
```

## 3- Closures with multiple parameters
This time our `travel()` function will require a closure that specifies where someone is traveling to, and the speed they are going. This means we need to use `(String, Int) -> String` for the parameter’s type:

```swift
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
```

And after learning [Shorthand parameter names](#2--Shorthand-parameter-names), we will call `travel()` function like this:

```swift
travel {
    "I'm going to \($0) at \($1) miles per hour."
}
```

## 4- Returning closures from functions
Note this syntax:
```swift
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
```
As we know which comes after the 1st arrow in functions is its returning type, so in the above code `(String) -> Void` is `travel()`'s return type which is a closure accepting a `String` and returning `Void`<br>

We can now call `travel()` to get back that closure, then call it as a function:

```swift
let result = travel()
result("London")
```

## 5- Capturing Values
Closures capture and store references to constants and variables from the surrounding context. This is useful for capturing values in asynchronous operations.

```swift
func makeIncrementer(_ incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}

let incrementByTwo = makeIncrementer(2)
print(incrementByTwo()) // Outputs: 2
print(incrementByTwo()) // Outputs: 4
```

- Lets break down `makeIncrementer` function:<br>
It takes an `Int` parameter and returns a closure that takes no parameters and returns an `Int`