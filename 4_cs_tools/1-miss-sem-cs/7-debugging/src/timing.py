import time, random
n = random.randint(1, 10) * 100

# Get current time
start = time.time()

# Do some work
print("Sleeping for {} ms".format(n))
time.sleep(n/1000)

# Compute actual time between start and now
print(time.time() - start)

# Output
# Sleeping for 500 ms
# 0.5713930130004883

# Real Time - Total time your program time
# User Time - Time your program in user mode
