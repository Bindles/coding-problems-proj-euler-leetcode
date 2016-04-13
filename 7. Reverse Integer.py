#* 7. Reverse Integer
x = 123
#*
def reverse(x):
    n = int(str(x)[::-1])
    if n > 2147483647:
        return 0
    return -n if x < 0 else n

print(reverse(x))