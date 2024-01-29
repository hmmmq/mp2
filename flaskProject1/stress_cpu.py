from multiprocessing import Pool, cpu_count
import time

# Do intensive computation to stress the CPU
def stress_cpu(n):
    total = 0
    for i in range(n):
        total += i**2
    return total

def main():
    start_time = time.time()

    # Create as many processes as there are CPU cores
    processes = cpu_count()
    with Pool(processes) as pool:
        results = pool.map(stress_cpu, [110000000, 110000000])
        print(results)

    print("time cost: ", time.time() - start_time)

if __name__ == '__main__':
    main()
