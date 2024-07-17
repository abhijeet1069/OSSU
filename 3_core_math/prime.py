from math import sqrt
# n is the number to be check whether it is prime or not

for k in range (0,100):
    n = k**2+k+41

    # this flag maintains status whether the n is prime or not
    prime_flag = 0

    print("Check prime for =",n)

    if(n > 1):
        for i in range(2, int(sqrt(n)) + 1):
            if (n % i == 0):
                print("Factor found =",i)
                prime_flag = 1
                break
        if (prime_flag == 0):
            print("True")
        else:
            print("False")
    else:
        print("False")

    print("---------------------------------------",k,n,prime_flag)