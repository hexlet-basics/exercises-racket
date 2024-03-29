
Про Lisp-подобные языки говорят, что у этих языков нет синтаксиса. Синтаксис у них, конечно, есть, но максимально примитивный, фактически состоящий из списков и значений. Кроме того, в лиспах отсутствуют ключевые слова и соответствующие им конструкции. В обычных языках существует множество управляющих конструкций, таких как условия, циклы, возврат, присвоение переменных и многие другие. В лиспоподобных языках таких конструкций нет. (Это не значит, что на Racket нельзя реализовать цикл или написать условие — можно!)

Каким же образом Racket понимает, с чем сейчас он работает и что нужно делать? Все дело в _формах_. Любая корректная программа на Lisp называется _формой_. Например:

```scheme
; форма
(displayln "i am from form")
; форма
(+ 1 2)
; и это формы
8
"hello"

; а это не форма, так как такой код завершится с ошибкой
(1 2 3)
```

Форм всего две — нормальная и составная. Нормальной соответствуют все значения (и определения, с которыми мы познакомимся позже), так как они вычисляются сами в себя, например число _8_ или строка "hello". Составная форма — это список, который нужно обработать тем или иным способом (вычислить).

Когда код представлен как список, появляется простор для интерпретации. Возьмём сложение двух чисел, например 3 и 2. В виде списка такое сложение можно представить тремя разными способами:

* `(3 + 2)`
* `(3 2 +)`
* `(+ 3 2)`

В Lisp-языках используется префиксная нотация, то есть первый элемент формы определяет поведение (семантику). Такой способ обладает рядом преимуществ. Например, он позволяет естественным образом выполнять действие с любым набором элементов:

```scheme
; 3 + 2 + 8 + 3 + 9
(+ 3 2 8 3 9) ; 25

; 3 - 2 - 8 - 3 - 9
(- 3 2 8 3 9) ; -19
```

Другое преимущество — простота реализации динамической диспетчеризации по сравнению с другими языками. Этому способствуют и макросы.
