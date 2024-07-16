# print value[] using for loop
print("print value[] using for loop")
value = {1, 2, 3, 4, 5}
for i in value:
    print(i)

# Calculate total of number 1 to 5
print("Calculate total of number 1 to 5")
sum = 0
for i in value:
    sum = sum + i
print("total", sum)

# Program to print the value jump by 2 eg. 1,3,5,7..
print("Program to print the value jump by 2 eg. 1,3,5,7..")
for j in range(1, 10, 2):
    print(j)

# Program to print the values in reserve eg. 10,9,8,7...
print("Program to print the values in reserve eg. 10,9,8,7...")
for j in range(10, 1, -1):
    print(j)
