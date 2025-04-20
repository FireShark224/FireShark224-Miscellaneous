import time
import math
import hashlib
import random

def stress_test():
    for i in range(100000):

        T = math.factorial(random.randint(1, 1000))
        Y = math.factorial(random.randint(1, 1000))
        time.sleep(0.01)
        print(T)
        print(Y)
        
        Th = hashlib.sha3_512(str(T).encode('utf-8')).hexdigest()
        Yh = hashlib.sha3_512(str(Y).encode('utf-8')).hexdigest()
        print(Th)
        print(Yh)
       
stress_test()