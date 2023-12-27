
Обычного `if` без `else` в Racket нет, но есть две специальные формы: `when` и `unless`, предназначенные для этой цели.

### When

> `(when test-expr body ...+)`

Если результат `test-expr` истина, то вычисляется тело.

```scheme
(when (positive? -5)
  (display "hi"))

(when (positive? 5)
  (display "hi")
  (display " there"))
```

### Unless

> То же, что и `(when (not test-expr) body ...+)`.

Форма `unless` работает наоборот. Тело вычисляется в том случае, если `test-expr` – ложь. Использование `unless` хоть и бывает удобно, но код резко становится нечитаемым, когда в `test-expr` появляются составные условия.

```scheme
(unless (positive? 5)
  (display "hi"))
(unless (positive? -5)
  (display "hi")
  (display " there"))
```
