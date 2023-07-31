# Log Level

Welcome to Log Level on Exercism's Elixir Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

## Atoms

Elixir's `atom` type represents a fixed constant. An atom's value is simply its own name. This gives us a type-safe way to interact with data. Atoms can be defined as follows:

```elixir
# All atoms are preceded with a ':' then follow with alphanumeric snake-cased characters
variable = :an_atom
```

_Atoms_ are internally represented by an integer in a lookup table, which are set automatically. It is not possible to change this internal value.

## Cond

Often, we want to write code that can branch based on a condition. While there are many ways to do this in Elixir, one of the simplest ways is using `cond/1`.

At its simplest, `cond` follows the first path that evaluates to `true` with one or more branches:

```elixir
cond do
  x > 10 -> :this_might_be_the_way
  y < 7 -> :or_that_might_be_the_way
  true -> :this_is_the_default_way
end
```

If no path evaluates to `true`, an error is raised by the runtime.

## Instructions

You are running a system that consists of a few applications producing many logs. You want to write a small program that will aggregate those logs and give them labels according to their severity level. All applications in your system use the same log codes, but some of the legacy applications don't support all the codes.

| Log code              | Log label | Supported in legacy apps? |
|-----------------------| --------- | ------------------------- |
| 0                     | trace     | no                        |
| 1                     | debug     | yes                       |
| 2                     | info      | yes                       |
| 3                     | warning   | yes                       |
| 4                     | error     | yes                       |
| 5                     | fatal     | no                        |
| other / not supported | unknown   | -                         |

## 1. Determine the log label

Implement the `LogLevel.to_label/2` function. It should take an integer code and a boolean flag telling you if the log comes from a legacy app, and return the label of a log line as an atom.

Log codes not specified in the table should return an _unknown_ label. Log codes specified in the table as not supported in legacy apps should also return an _unknown_ label if the log came from a legacy app.

```elixir
LogLevel.to_label(0, false)
# => :trace

LogLevel.to_label(0, true)
# => :unknown
```

## 2. Send an alert

Somebody has to be notified when unexpected things happen.

Implement the `LogLevel.alert_recipient/2` function to determine to whom the alert needs to be sent. The function should take an integer code and a boolean flag telling you if the log comes from a legacy app, and return the name of the recipient as an atom.

Use the `LogLevel.to_label/2` function from the previous task. If the log label is _error_ or _fatal_, send the alert to the _ops_ team. If you receive a log with an _unknown_ label from a legacy system, send the alert to the _dev1_ team, other unknown labels should be sent to the _dev2_ team. All other log labels can be safely ignored by returning _false_.

```elixir
LogLevel.alert_recipient(-1, true)
# => :dev1

LogLevel.alert_recipient(0, false)
# => false
```

## Source

### Created by

- @neenjaw

## Instruções

Você está executando um sistema que consiste em alguns aplicativos que produzem muitos logs. Você deseja escrever um pequeno programa que agregue esses logs e dê a eles rótulos de acordo com seu nível de gravidade. Todos os aplicativos em seu sistema usam os mesmos códigos de log, mas alguns dos aplicativos herdados não suportam todos os códigos.

| Código de registro   | Rótulo de registro | Compatível com aplicativos legados? |
|----------------------|--------------------|-------------------------------------|
| 0                    | vestígio           | não                                 |
| 1                    | depurar            | sim                                 |
| 2                    | informação         | sim                                 |
| 3                    | aviso              | sim                                 |
| 4                    | erro               | sim                                 |
| 5                    | fatal              | não                                 |
|outro / não suportado | desconhecido       | -                                   |

## 1. Determine o rótulo do registro

Implemente a LogLevel.to_label/2 função. Ele deve receber um código (int) e um sinalizador booleano informando se o log vem de um aplicativo herdado e retornar o rótulo de uma linha de log como um átomo.

Os códigos de log não especificados na tabela devem retornar um rótulo desconhecido . Os códigos de log especificados na tabela como não suportados em aplicativos legados também devem retornar um rótulo desconhecido se o log vier de um aplicativo legado.

```elixir
LogLevel.to_label(0, false)
# => :trace

LogLevel.to_label(0, true)
# => :unknown
```

## 2. Envie um alerta

Alguém tem que ser notificado quando coisas inesperadas acontecem.

Implemente a LogLevel.alert_recipient/2função para determinar para quem o alerta precisa ser enviado. A função deve receber um código inteiro e um sinalizador booleano informando se o log vem de um aplicativo herdado e retornar o nome do destinatário como um átomo.

Use a LogLevel.to_label/2função da tarefa anterior. Se o rótulo do log for error ou fatal , envie o alerta para a equipe de operações . Se você receber um log com um rótulo desconhecido de um sistema legado, envie o alerta para a equipe dev1 , outros rótulos desconhecidos devem ser enviados para a equipe dev2 . Todos os outros rótulos de log podem ser ignorados com segurança retornando false .

```elixir
LogLevel.alert_recipient(-1, true)
# => :dev1

LogLevel.alert_recipient(0, false)
# => false
```