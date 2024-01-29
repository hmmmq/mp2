from multiprocessing import Pool, cpu_count
import time

def stress_cpu(n):
    total = 0
    for i in range(n):
        total += sum(j ** 2 for j in range(1000))   
    return total

def main():
    start_time = time.time()

    processes = cpu_count() * 2   
    large_number = 50000000  

    with Pool(processes) as pool:
        results = pool.map(stress_cpu, [large_number] * processes)
        print(results)

    print("time cost: ", time.time() - start_time)

if __name__ == '__main__':
    main()
