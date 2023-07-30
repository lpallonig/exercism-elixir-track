# Secrets

Welcome to Secrets on Exercism's Elixir Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

## Anonymous Functions

Functions are treated as first class citizens in Elixir. This means that:

- Named and anonymous functions can be assigned to variables.
- Named and anonymous functions can be passed around like data as arguments and return values.
- Anonymous functions can be created dynamically.

Anonymous functions, in contrast to named functions, don't have a static reference available to them, they are only available if they are assigned to a variable or immediately invoked.

We might use anonymous functions to:

- Hide data using lexical scope (also known as a closure).
- Dynamically create functions at run-time.

Anonymous functions start with the reserved word `fn`, the arguments are separated from the body of the function with the `->` token, and they are finished with an `end`. As with named functions, the last expression in the function is _implicitly returned_ to the calling function.

To invoke a function reference, you must use a `.` between the reference variable and the list of arguments:

```elixir
function_variable = fn param ->
  param + 1
end

function_variable.(1)
# => 2
```

You can even use short hand capture notation to make this more concise:

```elixir
variable = &(&1 + 1)

variable.(1)
# => 2
```

## Bit Manipulation

Elixir supports many functions for working with bits found in the _Bitwise module_.

- `band/2`: bitwise AND
- `bsl/2`: bitwise SHIFT LEFT
- `bsr/2`: bitwise SHIFT RIGHT
- `bxor/2`: bitwise XOR
- `bor/2`: bitwise OR
- `bnot/1`: bitwise NOT

Here is an example how to use a bitwise function:

```elixir
Bitwise.bsl(1, 3)
# => 8
```

All bitwise functions only work on integers.

If you are running Elixir version 1.9 or lower, you will need to call `require Bitwise` at the beginning of the module definition to be able to use the _Bitwise_ module.

## Instruções

Neste exercício, você foi encarregado de escrever o software para um dispositivo de criptografia que funciona realizando transformações nos dados. Você precisa de uma maneira flexível de criar funções complicadas combinando funções mais simples.

Para cada tarefa, retorne uma função anônima que pode ser chamada do escopo de chamada.

Todas as funções devem esperar argumentos inteiros. Os inteiros também são adequados para realizar operações bit a bit no Elixir.

## 1. Crie um adicionador

Implementar `Secrets.secret_add/1.` Ele deve retornar uma função que recebe um argumento e adiciona a ele o argumento passado para `secret_add`.

```elixir
adder = Secrets.secret_add(2)
adder.(2)
# => 4
```

## 2. Crie um subtrator

Implementar `Secrets.secret_subtract/1`. Ele deve retornar uma função que recebe um argumento e subtrai o segredo passado para `secret_subtract` desse argumento.

```elixir
subtractor = Secrets.secret_subtract(2)
subtractor.(3)
# => 1
```

## 3. Crie um multiplicador

Implementar `Secrets.secret_multiply/1`. Ele deve retornar uma função que recebe um argumento e o multiplica pelo segredo passado para `secret_multiply`.

```elixir
multiplier = Secrets.secret_multiply(7)
multiplier.(3)
# => 21
```

## 4. Crie um divisor

Implementar `Secrets.secret_divide/1`. Ele deve retornar uma função que recebe um argumento e o divide pelo segredo passado para `secret_divide`.

```elixir
divider = Secrets.secret_divide(3)
divider.(32)
# => 10
```

Faça uso da divisão inteira para que a saída seja compatível com a entrada esperada das outras funções.

## 5. Crie um "e"-er

Implementar `Secrets.secret_and/1`. Ele deve retornar uma função que recebe um argumento e executa uma operação bit a bit nele e o segredo passado para `secret_and`.

```elixir
ander = Secrets.secret_and(1)
ander.(2)
# => 0
```

## 6. Crie um "xor"-er

Implementar `Secrets.secret_xor/1`. Ele deve retornar uma função que recebe um argumento e executa uma operação xor bit a bit nele e o segredo passado para `secret_xor`.

```elixir
xorer = Secrets.secret_xor(1)
xorer.(3)
# => 2
```

## 7. Crie um combinador de funções

Implementar `Secrets.secret_combine/2`. Ele deve retornar uma função que recebe um argumento e aplica a ele as duas funções passadas em `secret_combine` ordem.

```elixir
multiply = Secrets.secret_multiply(7)
divide = Secrets.secret_divide(3)
combined = Secrets.secret_combine(multiply, divide)

combined.(6)
# => 14
```

## Source

### Created by

- @neenjaw