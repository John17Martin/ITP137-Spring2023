import Foundation
import Glibc

var colombiaPeso:Double
var brazilReal:Double
var peruSole:Double

print("Please enter the number of Columbian Pesos.")
colombiaPeso = Double(readLine()!)!
print("Please enter the number of Brazilian Reals.")
brazilReal = Double(readLine()!)!
print("Please enter the numnber of Pervian Soles.")
peruSole = Double(readLine()!)!

// These conversion rates are from the Internet on 2/22/2023. 
var colombiaToDollars = 0.0002 
var brazilToDollars = 0.19
var peruToDollars = 0.26

var usDollars = colombiaPeso * colombiaToDollars + brazilReal * brazilToDollars + peruSole * peruToDollars

print("US Dollars = $", usDollars)
