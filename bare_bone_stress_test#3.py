import time
import math

def stress_test():
    for i in range(100000):
        T = math.factorial(1000)
        time.sleep(0.01)
        print(T)
       
stress_test()