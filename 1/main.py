def multiples_of_3_or_5(n: int) -> int:
    """Finds the sum of all the multiples of 3 and 5 below n"""
    total = 0
    for m in range(n):
        if (m % 3 == 0) or (m % 5 == 0):
            total += m
    return total


print(multiples_of_3_or_5(1000))
