a = 5
b = "Test"
e, f, g = 10.5, "Amol", 6

print(a)
print("value is " + f)

# "{}{}".format() is used to print the value of variable which has data type other than string
print("{}{}".format("Value is ", e))

# "Roll number is " a " and percent is " e
print("{}{}{}{}".format("Roll number is ", a, " and percent is ", e))

# Notes-
# 1. In python we can concatinate variable with same data types
#   but if variable have different data types then  concatination will not work

variableOne = "Test1"
variableTwo = "Test2"
variableThree = 3
print(" concatinate variable with same data types ")
print(variableOne + " and " + variableTwo)
print(" concatinate variable with diff data types ")
print(a + " and " + variableThree)
