#!/usr/bin/env python

#Output:
# satyam@satyam-2 src % python3 sigint.py
# 15^C
# I got a SIGINT, but I am not stopping
# 24^C
# I got a SIGINT, but I am not stopping
# 48^Z
# zsh: suspended  python3 sigint.py

import signal,time

def handler(signum,time):
    print("\nI got a SIGINT, but I am not stopping")

signal.signal(signal.SIGINT, handler)
i = 0
while True:
    time.sleep(0.1)
    print("\r{}".format(i),end="")
    i += 1