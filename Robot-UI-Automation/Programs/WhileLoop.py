print("Write a program to print the value from 1 to 10")
i = 1
while i < 10:
    print(i)
    i += 1
print("*****loop end******")

print("Write a program to skip 7 from range 1 to 10")
j = 1
while j <= 10:
    if j == 7:
        j += 1
        continue

    print(j)
    j += 1
print("*****loop end******")
