import Foundation
import Glibc

for i in 1...100 {
    if i % 15 == 0 {
        print("FizzBuzz")
    }
    else if i % 5 == 0 {
        print("Buzz")
    }
    else if i % 3 == 0 {
        print("Fizz")
    }
    else {
        print(i)
    }
}
