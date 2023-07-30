# Freelancer Rates

Welcome to Freelancer Rates on Exercism's Elixir Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

## Integers

There are two different kinds of numbers in Elixir - integers and floats.

Integers are whole numbers.

```elixir
integer = 3
# => 3
```

## Floating Point Numbers

Floats are numbers with one or more digits behind the decimal separator. They use the 64-bit double precision floating-point format.

```elixir
float = 3.45
# => 3.45
```

### Working with numbers

In the [`Integer`][integer-functions] and [`Float`][float-functions] modules you can find some useful functions for working with those types. Basic arithmetic operators are defined in the [`Kernel`][kernel-arithmetic-operators] module.

### Conversion

Integers and floats can be mixed together in a single arithmetic expression. Using a float in an expression ensures the result will be a float too.

```elixir
2 * 3
# => 6

2 * 3.0
# => 6.0
```

However, when doing division, the result will always be a float, even if only integers are used.

```elixir
6 / 2
# => 3.0
```

To convert a float to an integer, you can discard the decimal part with [`trunc/1`][trunc-1].

[integer-functions]: https://hexdocs.pm/elixir/Integer.html#functions
[float-functions]: https://hexdocs.pm/elixir/Float.html#functions
[kernel-arithmetic-operators]: https://hexdocs.pm/elixir/Kernel.html#*/2
[trunc-1]: https://hexdocs.pm/elixir/Kernel.html#trunc/1

## Instructions

In this exercise you'll be writing code to help a freelancer communicate with a project manager by providing a few utilities to quickly calculate daily and monthly rates, optionally with a given discount.

We first establish a few rules between the freelancer and the project manager:

- The daily rate is 8 times the hourly rate.
- A month has 22 billable days.

Sometimes, the freelancer is offering to apply a discount on their daily rate (for example for their most loyal customers or for non-for-profit customers).

Discounts are modeled as fractional numbers representing percentage, for example `25.0` (25%).

## 1. Calculate the daily rate given an hourly rate

Implement a function to calculate the daily rate given an hourly rate:

```elixir
FreelancerRates.daily_rate(60)
# => 480.0
```

The returned daily rate should be a float.

## 2. Calculate a discounted price

Implement a function to calculate the price after a discount.

```elixir
FreelancerRates.apply_discount(150, 10)
# => 135.0
```

The returned value should always be a float, not rounded in any way.

## 3. Calculate the monthly rate, given an hourly rate and a discount

Implement a function to calculate the monthly rate, and apply a discount:

```elixir
FreelancerRates.monthly_rate(77, 10.5)
# => 12130
```

The returned monthly rate should be rounded up (take the ceiling) to the nearest integer.

## 4. Calculate the number of workdays given a budget, hourly rate and discount

Implement a function that takes a budget, an hourly rate, and a discount, and calculates how many days of work that covers.

```elixir
FreelancerRates.days_in_budget(20000, 80, 11.0)
# => 35.1
```

The returned number of days should be rounded down (take the floor) to one decimal place.

## Source

### Created by

- @angelikatyborska

### Contributed to by

- @neenjaw


## Instruções

Neste exercício, você escreverá um código para ajudar um freelancer a se comunicar com um gerente de projeto, fornecendo alguns utilitários para calcular rapidamente as taxas diárias e mensais, opcionalmente com um determinado desconto.

Primeiro estabelecemos algumas regras entre o freelancer e o gerente de projeto:

- A taxa diária é 8 vezes a taxa horária.
- Um mês tem 22 dias faturáveis.

Às vezes, o freelancer está se oferecendo para aplicar um desconto em sua diária (por exemplo, para seus clientes mais fiéis ou para clientes sem fins lucrativos).

Os descontos são modelados como números fracionários representando porcentagem, por exemplo 25.0(25%).

## 1. Calcule a taxa diária dada uma taxa horária

Implemente uma função para calcular a taxa diária dada uma taxa horária:

```elixir
FreelancerRates.daily_rate(60)
# => 480.0
```

A taxa diária retornada deve ser flutuante.

## 2. Calcular um preço com desconto

Implemente uma função para calcular o preço após um desconto.

```elixir
FreelancerRates.apply_discount(150, 10)
# => 135.0
```

O valor retornado deve ser sempre float, não arredondado de forma alguma.

## 3. Calcule a taxa mensal, dada uma taxa horária e um desconto

Implemente uma função para calcular a taxa mensal e aplique um desconto:

```elixir
FreelancerRates.monthly_rate(77, 10.5)
# => 12130
```

A taxa mensal retornada deve ser arredondada (considerar o teto) para o número inteiro mais próximo.

## 4. Calcule o número de dias úteis considerando um orçamento, taxa horária e desconto

Implemente uma função que pega um orçamento, uma taxa por hora e um desconto e calcula quantos dias de trabalho cobre.

```elixir
FreelancerRates.days_in_budget(20000, 80, 11.0)
# => 35.1
```

O número de dias retornado deve ser arredondado para baixo (tomar o piso) para uma casa decimal.
