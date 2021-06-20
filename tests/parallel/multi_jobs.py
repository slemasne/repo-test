import os 
import multiprocessing as mp
import time
from pathlib import Path

def main():

    start_time = time.time()

    print("Number of processors: ", mp.cpu_count())

    cores_minus_1 = mp.cpu_count() - 1

    current_dir = Path(__file__).absolute().parent
    notebooks = [current_dir.joinpath(x) for x in os.listdir(current_dir) if x.endswith(".ipynb")] 

    list_of_commands = [f"jupyter nbconvert --to notebook --inplace --execute {notebook}" for notebook in notebooks]

    p = mp.Pool(cores_minus_1)
    p.map(os.system, (t for t in list_of_commands))

    end_time = time.time()

    print(f"Run time is: {end_time - start_time}")


if __name__ == "__main__":
    main()