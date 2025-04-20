import random
import time
import hashlib

def stress_test():
    for i in range(100000):
        j = random.randint(1, 100000000000000000000000)
        k = random.randint(1, 100000000000000000000000)
        l = random.randint(1, 100000000000000000000000)
        result = j + k + l
        print("the result of", j, "and", k, "and", l, "is:", result)
        
        jh = hashlib.sha256(str(j).encode('utf-8')).hexdigest()
        kh = hashlib.sha256(str(k).encode('utf-8')).hexdigest()
        lh = hashlib.sha256(str(l).encode('utf-8')).hexdigest()
        resulth = hashlib.sha256(str(result).encode('utf-8')).hexdigest()

        print("SHA256 of", j, "is:", jh)
        print("SHA256 of", k, "is:", kh)
        print("SHA256 of", l, "is:", lh)
        print("SHA256 of", result, "is:", resulth)

stress_test()
time.sleep(10)
