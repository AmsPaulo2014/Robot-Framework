values = [1, 2, "Amol", 4, 10.5]
print(values[1:5]) #Print index value 2 to 4
print(values[-1]) #Print last index value
values.insert(5, "Test")  # Add value in list
values.append("OBJ")  # Append the value at the end of list
values[1] = "AJAY"  # Replace values[1] => 2 to "AJAY"
del values[2]  # Delete index


print(values)
