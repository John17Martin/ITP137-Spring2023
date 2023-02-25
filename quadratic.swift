import Foundation
import Glibc

print("This program solves the quadratic equation.")
print("A quadratic equation is in the form ax^2 + bx + c")
print("a, b, c must be numbers!")
print("Entering a character will cause the program to fail!")

var numA = 0.0
var numB = 0.0
var numC = 0.0
print(" ")
repeat {
  print("Please enter a double number for a")
  numA = Double(readLine()!)!
  if numA == 0 {
    print("In a quadratic equation, a can't be zero!")
    print("Enter a non-zero value for a.")
  }
} while numA == 0

print("Please enter a double number for b")
numB = Double(readLine()!)!
print("Please enter a double number for c")
numC = Double(readLine()!)!

var needsI = false
var firstAnswer:Double = 0
var secondAnswer:Double = 0
var firstI:Double = 0

var squareB = numB * numB
var fourAC = 4 * numA * numC
var toBeRooted = squareB - fourAC
if toBeRooted < 0 {
    needsI = true
    toBeRooted = -1 * toBeRooted
}
var root = sqrt(toBeRooted)
if needsI == false {
    firstAnswer = -1 * numB + root
    firstAnswer = firstAnswer / 2 * numA
    secondAnswer = -1 * numB - root
    secondAnswer = secondAnswer / 2 * numA
    print("The two real answers are", firstAnswer, "and", secondAnswer)
}
else {
    firstAnswer = -1 * numB / 2 * numA
    firstI = root / 2 * numA
    print("The two complex answers are")
    print(firstAnswer, "+", firstI, "i")
    print("and")
    print(firstAnswer, "-", firstI, "i")
}



