import time
from datetime import datetime

from joblib import Parallel, delayed
import multiprocessing

# what are your inputs, and what operation do you want to
# perform on each input. For example...

print(datetime.now())

inputs = range(15)
def processInput(i):
    print("sleeping function START")
    time.sleep(5)
    print("sleeping function FINISHED")
    return i * i

num_cores = multiprocessing.cpu_count()

print(num_cores)

results = Parallel(n_jobs=num_cores)(delayed(processInput)(i) for i in inputs)

print(results)

print(datetime.now())
