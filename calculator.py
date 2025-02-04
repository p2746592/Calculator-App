

import time 

if __name__ == "__main__":
    print("Calculator App is running on port 5050...")
    while True:
        time.sleep(10)  # Keeps the app running

def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

def divide(a, b):
    if b == 0:
        return "Error: Division by zero"
    return a / b

if __name__ == "__main__":
    print("Calculator App is ready to use!")

# Keep the application running
    while True:
        time.sleep(10)
