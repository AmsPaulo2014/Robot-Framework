# Tuple is a built-in data type that allows you to create immutable sequences of values.
# As its immutable we cannot change the value once its declared.
# its denote by () eg. val= (1,2,"Test",4)


values = [1, 2, "Test", 7]
print(values)
values[1] = "AMOL"
values.append("Phy")
print(values)

# Dictionary
dic1 = {1: "Abc", 2: "efg", 3: "hij"}
print(dic1[2])
dic2 = {"one": 111, "two": 222, "three": 333}
print(dic2["two"])
dic3 = {1: "Lion", 2: "Tiger", "three": 333}
#print(dic2["three"])

#How to create and add data in dictionary
dictionary = {}
dictionary["firstName"] = "Amol"
dictionary["lastName"] = "Pawar"
dictionary["gender"] = "Male"
dictionary ["RoleNum"] = 30
print(dictionary)