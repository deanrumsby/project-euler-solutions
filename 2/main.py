def even_fibonacci_numbers(n: int) -> int:
    """Finds the sum of the even fibonacci numbers with values less than n"""
    fib_a, fib_b = 0, 1
    temp = 0
    total = 0
    while fib_b < n:
        if fib_b % 2 == 0:
            total += fib_b
        temp = fib_b
        fib_b += fib_a
        fib_a = temp
    return total


print(even_fibonacci_numbers(4000000))
