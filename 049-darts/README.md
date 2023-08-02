# Darts

Welcome to Darts on Exercism's Elixir Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

Write a function that returns the earned points in a single toss of a Darts game.

[Darts][darts] is a game where players throw darts at a [target][darts-target].

In our particular instance of the game, the target rewards 4 different amounts of points, depending on where the dart lands:

- If the dart lands outside the target, player earns no points (0 points).
- If the dart lands in the outer circle of the target, player earns 1 point.
- If the dart lands in the middle circle of the target, player earns 5 points.
- If the dart lands in the inner circle of the target, player earns 10 points.

The outer circle has a radius of 10 units (this is equivalent to the total radius for the entire target), the middle circle a radius of 5 units, and the inner circle a radius of 1.
Of course, they are all centered at the same point — that is, the circles are [concentric][] defined by the coordinates (0, 0).

Write a function that given a point in the target (defined by its [Cartesian coordinates][cartesian-coordinates] `x` and `y`, where `x` and `y` are [real][real-numbers]), returns the correct amount earned by a dart landing at that point.

[darts]: https://en.wikipedia.org/wiki/Darts
[darts-target]: https://en.wikipedia.org/wiki/Darts#/media/File:Darts_in_a_dartboard.jpg
[concentric]: https://mathworld.wolfram.com/ConcentricCircles.html
[cartesian-coordinates]: https://www.mathsisfun.com/data/cartesian-coordinates.html
[real-numbers]: https://www.mathsisfun.com/numbers/real-numbers.html

## Source

### Created by

- @jiegillet

### Contributed to by

- @angelikatyborska

### Based on

Inspired by an exercise created by a professor Della Paolera in Argentina


## Instruções
Escreva uma função que retorne os pontos ganhos em um único lançamento de um jogo de dardos.

Darts é um jogo onde os jogadores jogam dardos em um alvo .

Em nossa instância particular do jogo, o alvo recompensa 4 quantidades diferentes de pontos, dependendo de onde o dardo cair:

Se o dardo cair fora do alvo, o jogador não ganha pontos (0 pontos).
Se o dardo cair no círculo externo do alvo, o jogador ganha 1 ponto.
Se o dardo cair no meio do círculo do alvo, o jogador ganha 5 pontos.
Se o dardo cair no círculo interno do alvo, o jogador ganha 10 pontos.
O círculo externo tem um raio de 10 unidades (isso é equivalente ao raio total para todo o alvo), o círculo do meio um raio de 5 unidades e o círculo interno um raio de 1. Claro, todos eles estão centrados no mesmo ponto — ou seja, os círculos são concêntricos definidos pelas coordenadas (0, 0).

Escreva uma função que, dado um ponto no alvo (definido por suas coordenadas cartesianas x e y, onde xe ysão reais ), retorne o valor correto ganho por um dardo aterrissando naquele ponto.

## Em geral
A distância de um ponto `(x, y)` do centro do alvo `(0, 0)` pode ser calculada com `sqrt(x*x + y *y)`

Você pode calcular a raiz quadrada x de elevando-a à potência de 1/2. Em outras palavras,`sqrt(x) == pow(x, 0.5)`

o parametro que vai comparar distance é pow(1, 2), pow(5, 2)