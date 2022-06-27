def largest_prime_factor(n: int) -> int:
    """Finds the largest prime factor of n"""
    upper_bound = int(n ** (1/2)) + 1
    primes = sieve_of_eratosthenes(upper_bound)
    for prime in primes[::-1]:
        if n % prime == 0:
            return prime
    else: 
        return f"{n} is prime"


def sieve_of_eratosthenes(n: int) -> list:
    """Creates a list of primes less than n"""
    sieve = [True] * n
    sieve[0], sieve[1] = False, False
    primes = []
    for p, is_prime in enumerate(sieve):
        if is_prime:
            primes.append(p)
            for i in range(2 * p, n, p):
                sieve[i] = False
    return primes


print(largest_prime_factor(600851475143))
