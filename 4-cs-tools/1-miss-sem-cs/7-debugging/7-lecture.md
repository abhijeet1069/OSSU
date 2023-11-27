# Debugging and Profiling

Tools depend on language or what thing you are doing.

## Colors in logfiles

When going through thosands of logfiles. Color can help us differentiate warning or error messages.
logger.py

## Central logging

Central logging in UNIX.

```zsh
$ log show --last 10s

Timestamp                       Thread     Type        Activity             PID    TTL  
2023-11-24 08:32:52.648625+0530 0x11dc     Default     0x0                  659    0    mDNSResponder: [com.apple.mDNSResponder:mDNS] [A(ac7f42f5, 725acd95)] Sent a previous IPv4 mDNS response to <mask.hash: 'A7s6Olz9bdV8kg7Oboy5fg=='> over unicast via en0/15
2023-11-24 08:32:52.873547+0530 0xa8ad9    Default     0x0                  0      0    kernel: arm64e_plugin_host: running binary "bash" in keys-off mode due to identity: com.apple.bash
2023-11-24 08:32:52.880721+0530 0xa8adc    Default     0x0                  0      0    kernel: arm64e_plugin_host: running binary "bash" in keys-off mode due to identity: com.apple.bash
...
```

## Static Analysis

Identify bug in a code even before it is executed.

Static Analysis of Python code

```zsh
$ pylint foobar.py  
************* Module foobar
foobar.py:11:0: C0304: Final newline missing (missing-final-newline)
foobar.py:1:0: C0114: Missing module docstring (missing-module-docstring)
foobar.py:3:0: C0116: Missing function or method docstring (missing-function-docstring)
foobar.py:3:0: C0104: Disallowed name "foo" (disallowed-name)
foobar.py:8:0: C0104: Disallowed name "bar" (disallowed-name)
foobar.py:11:6: E0602: Undefined variable 'baz' (undefined-variable)
-----------------------------------
Your code has been rated at 0.00/10
```

## Profilers

Profiling is how you optimise how much resources your code uses.
Basic CPU profiling can be done using time command. However, its like a blackbox.
For much detail CPU profiling we use line profilers.

### Line Profilers

Calculate how much CPU each line takes

```zsh
$ kernprof -l -v a.py

Wrote profile results to a.py.lprof
Timer unit: 1e-06 s

Total time: 0.783705 s
File: a.py
Function: get_urls at line 6

Line #      Hits         Time  Per Hit   % Time  Line Contents
==============================================================
     6                                           @profile
     7                                           def get_urls():
     8         1     777426.0 777426.0     99.2      response = requests.get('https://missing.csail.mit.edu')
     9         1       6042.0   6042.0      0.8      s = BeautifulSoup(response.content, 'lxml')
    10         1          0.0      0.0      0.0      urls = []
    11        46        223.0      4.8      0.0      for url in s.find_all('a'):
    12        45         14.0      0.3      0.0          urls.append(url['href'])

satyam@satyam-2 src % 
```

### Memory Profilers

```zsh
$ python3 -m memory_profiler mem.py
Filename: mem.py

Line #    Mem usage    Increment  Occurrences   Line Contents
=============================================================
     1   43.031 MiB   43.031 MiB           1   @profile
     2                                         def my_func():
     3   50.672 MiB    7.641 MiB           1       a = [1] * (10 ** 6)
     4  203.281 MiB  152.609 MiB           1       b = [2] * (2 * 10 ** 7)
     5   50.688 MiB -152.594 MiB           1       del b
     6   50.688 MiB    0.000 MiB           1       return a
 
```

### Resource Monitoring

htop - Live resource monitoring

## Call Graph

Its better to create you own dotfiles. Which function called which function

GraphViz - Render dotfiles

```zsh
dot -Tpng basic.gv -o new.png

```

## Flame Graph

Sampling profiler

stress - stress test cpu

cachegrind - tracing profiler

lsof - list of open files
Find which process is using which file or which port.

## Benchmarking

Check which program is faster and you should use

hyperfine --warmup 3 'fd -e jpg' 'find . -iname "*.jpg"'
