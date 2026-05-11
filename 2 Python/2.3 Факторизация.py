def prime_factors(n: int) -> list:
factors = []

# Обрабатываем делитель 2 отдельно
while n % 2 == 0:
    factors.append(2)
    n //= 2

# Проверяем только нечётные числа
d = 3
while d * d <= n:
    while n % d == 0:
        factors.append(d)
        n //= d
    d += 2

# Если осталось простое число > 2
if n > 1:
    factors.append(n)

return factors

# Пример

n = 56
print(prime_factors(n))  # [2, 2, 2, 7]
