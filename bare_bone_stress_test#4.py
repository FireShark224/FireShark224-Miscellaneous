import time
import math
import hashlib

def stress_test():
    for i in range(100000):

        T = math.factorial(1000)
        time.sleep(0.01)
        print(T)

        Th = hashlib.sha3_512(str(T).encode('utf-8')).hexdigest()
        print(Th)
       
stress_test()