
Реализуйте функцию `same-parity?`, которая принимает на вход два числа и возвращает `#t` в том случае, если их четность совпадает. В ином случае возвращается `#f`.

> Воспользуйтесь логическими операторами и встроенными функциями [odd?](https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._odd~3f%29%29) и [even?](https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._even~3f%29%29).

```scheme
(same-parity? 3 7) ; #t
(same-parity? 4 8) ; #t
(same-parity? 4 7) ; #f
(same-parity? 3 10) ; #f
```
