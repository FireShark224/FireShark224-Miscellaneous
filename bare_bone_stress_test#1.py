import random
import time

def stress_test():
    for i in range(100000):
        j = random.randint(1, 100000000000000000000000)
        k = random.randint(1, 100000000000000000000000)
        l = random.randint(1, 100000000000000000000000)
        result = j + k + l
        print("the result of", j, "and", k, "and", l, "is:", result)
        


stress_test()
time.sleep(10)