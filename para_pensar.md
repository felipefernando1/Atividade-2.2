# Resposta das 4 questões finais do documento:

## 1. No item 2, o que muda se você usar / em vez de / no Python? E em C, como fica?
Para o python a / (única) serve para realizar uma divisão real (float), enquanto o // serve para uma divisão inteira. Já para o C, não existe um operador diferente como no Python, o compilador interpreta seguindo a regra de que se a divisão é entre dois inteiros (inteiro/inteiro) o resultado deve ser inteiro e deve-se descardar a parte decimal, já se a divisão possui ao menos um número real, a divisão ocorre a divisão real.

## 2. No item 4, teste c * (9/5) no seu programa em C e explique o resultado.
Testando com o mesmo número em Celsius (100) o valor foi de 212.0 para 132.0, divergindo bastante do verdadeiro. O que ocorre é a precedencia de operações do C. Quando a divisão está entre parênteses, o C realiza uma divisão real, já que c é uma variável real e é multiplicado pelo 9 para depois ser dividido por 5 (100.00 x 9 = 900.00/5 = 180.00), agora com os parênteses a divisão de 9/5 se torna inteira, retornando apenas o 1 como resultado final, assim, o c multiplica esse 1 por 100 e o 0.8 é ignorado, ocasionando o resultado incorreto da operação.

## 3. No item 9, por que o C imprime 1 e o Python imprime True ? O que isso revela sobre como C representa "verdadeiro" e "falso"?
O C imprime 1 porque ele não tem o tipo booleano nativo e trata valores lógicos como números inteiros. Qualquer retorno que seja diferente de 0 é considerado verdadeiro em uma operação lógica no C (10, -1, 42 é considerado verdadeiro, uma vez que é diferente de 0). O Python possui a clareza semântica maior e o tipo bool é representado por True e False. Ele é orientado a objetos e True e False são subclasses inteiras que valem 1 e 0, respectivamente, sendo ocultados pela linguagem.

## 4. Escolha um dos programas e rode gcc -S no seu .c . Abra o .s e localize onde acontece uma das operações (uma soma, por exemplo).
No Assembly do exercício 3, uma linha que representa uma das somas das notas é: addss	%xmm1, %xmm0. Aqui o assembly diz para somar %xmm1 em %xmm0 com a instrução addss (Add Scalar Single -> Somar, Escalar, Precisão simples). 