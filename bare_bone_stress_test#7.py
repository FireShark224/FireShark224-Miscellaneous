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

        base = random.randint(2, 100)
        exp = random.randint(100, 500)
        ru = base ** exp
        print(ru)

        num = random.randint(1, 100000)
        result = 2 ** num 
       
stress_test()