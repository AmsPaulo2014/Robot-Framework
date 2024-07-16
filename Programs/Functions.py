# A function is a block of code which only runs when it is called.
# You can pass data, known as parameters, into a function.
# A function can return data as a result.
def printHello():
    print("Hello World")


def addition(a, b):
    return a + b


def multiple(a, b):
    return a * b


print(addition(2, 3))
print(multiple(10, 3))
printHello()