---
title: "Introdução ao Software R - Curso I"
author: [Sérgio Ricardo Pacheco Vilar de Araújo]
date: "10 de Julho de 2020"
subject: "Markdown"
keywords: [Markdown, Example]
subtitle: "Módulo 1 - Tarefa 2"
lang: "pt"
titlepage: true
...

# Questão 1

a. Crie um vetor para cada variável do banco de dados

```r
salario <- data$salario
idade <- data$idade
formacao <- data$formacao
```

```r
> salario
 [1] 249420000 230555000 139960000 135530000 122670000  80730000
 [7]  75330000  71840000  69660000  68955000  62990000  56470000
[13]  55990000  47830000  46190000  41310000  39635000  39315000
[19]  37480000  37420000  36540000  36380000  35410000  34490000
[25]  32935000  32730000  32190000  31540000  31436000  31435000
[31]  31340000  31230000  30866000  29360000  28820000  28400000
[37]  27970000  27885000  26900000  25180000

> idade
 [1] 55 63 65 60 60 71 61 57 57 67 56 58 60 48 62 65 63 53 55 53
[21] 59 60 59 58 43 64 57 63 64 63 59 61 57 53 54 72 54 50 60 62

> formacao
 [1] 2 2 3 3 2 5 0 4 1 1 2 1 2 2 4 3 1 2 1 1 2 2 2 4 2 2 2 2 5 2 2
[32] 1 4 2 2 0 1 2 3 2
```

b. Divida a variável salário por um milhão

```r
> salario/1000000
 [1] 249.420 230.555 139.960 135.530 122.670  80.730  75.330
 [8]  71.840  69.660  68.955  62.990  56.470  55.990  47.830
[15]  46.190  41.310  39.635  39.315  37.480  37.420  36.540
[22]  36.380  35.410  34.490  32.935  32.730  32.190  31.540
[29]  31.436  31.435  31.340  31.230  30.866  29.360  28.820
[36]  28.400  27.970  27.885  26.900  25.180
```

c. Transforma a variável formação em um fator, em que 0 – nenhuma, 1 – bacharelado, 2 –
MBA, 3 – LLM, 4 – Mestrado, 5 – PhD

```r
> formacaoFator <- factor(formacao, label = c("Nenhuma", "Bacharelado", "MBA", "LLM", "Mestrado", "PhD"), levels = 0:5)
> formacaoFator
 [1] MBA         MBA         LLM         LLM         MBA        
 [6] PhD         Nenhuma     Mestrado    Bacharelado Bacharelado
[11] MBA         Bacharelado MBA         MBA         Mestrado   
[16] LLM         Bacharelado MBA         Bacharelado Bacharelado
[21] MBA         MBA         MBA         Mestrado    MBA        
[26] MBA         MBA         MBA         PhD         MBA        
[31] MBA         Bacharelado Mestrado    MBA         MBA        
[36] Nenhuma     Bacharelado MBA         LLM         MBA        
Levels: Nenhuma Bacharelado MBA LLM Mestrado PhD
```

d. Crie um data frame com a variável idade e
com as novas variáveis dos itens b) e c).

```r
> frame <- data.frame(salarioMilhao, formacaoFator)
> frame
   salarioMilhao formacaoFator
1        249.420           MBA
2        230.555           MBA
3        139.960           LLM
4        135.530           LLM
5        122.670           MBA
6         80.730           PhD
7         75.330       Nenhuma
8         71.840      Mestrado
9         69.660   Bacharelado
10        68.955   Bacharelado
11        62.990           MBA
12        56.470   Bacharelado
13        55.990           MBA
14        47.830           MBA
15        46.190      Mestrado
16        41.310           LLM
17        39.635   Bacharelado
18        39.315           MBA
19        37.480   Bacharelado
20        37.420   Bacharelado
21        36.540           MBA
22        36.380           MBA
23        35.410           MBA
24        34.490      Mestrado
25        32.935           MBA
26        32.730           MBA
27        32.190           MBA
28        31.540           MBA
29        31.436           PhD
30        31.435           MBA
31        31.340           MBA
32        31.230   Bacharelado
33        30.866      Mestrado
34        29.360           MBA
35        28.820           MBA
36        28.400       Nenhuma
37        27.970   Bacharelado
38        27.885           MBA
39        26.900           LLM
40        25.180           MBA
```

e. Calcule o valor máximo e o mínimo da variável
salário, e o tamanho da amostra.

```r
> max(salario)
[1] 249420000
> min(salario)
[1] 25180000
> length(salario)
[1] 40
```

f. Faça o mesmo com a variável idade.

```r
> max(idade)
[1] 72
> min(idade)
[1] 43
> length(idade)
[1] 40
```

g. Classifique a variável obtida na letra b) em
dois fatores, sendo Fator 1 os salários menores ou iguais a 36,98 milhões de dólares e o Fator 2 os salários maiores que 36,98

```r
> salarioFator <- ifelse(salarioMilhao <= 36.98, "menor igual 36,98", "maior 36,98")
> salarioFator
 [1] "maior 36,98"       "maior 36,98"       "maior 36,98"      
 [4] "maior 36,98"       "maior 36,98"       "maior 36,98"      
 [7] "maior 36,98"       "maior 36,98"       "maior 36,98"      
[10] "maior 36,98"       "maior 36,98"       "maior 36,98"      
[13] "maior 36,98"       "maior 36,98"       "maior 36,98"      
[16] "maior 36,98"       "maior 36,98"       "maior 36,98"      
[19] "maior 36,98"       "maior 36,98"       "menor igual 36,98"
[22] "menor igual 36,98" "menor igual 36,98" "menor igual 36,98"
[25] "menor igual 36,98" "menor igual 36,98" "menor igual 36,98"
[28] "menor igual 36,98" "menor igual 36,98" "menor igual 36,98"
[31] "menor igual 36,98" "menor igual 36,98" "menor igual 36,98"
[34] "menor igual 36,98" "menor igual 36,98" "menor igual 36,98"
[37] "menor igual 36,98" "menor igual 36,98" "menor igual 36,98"
[40] "menor igual 36,98"
```

h. Obtenha o tamanho de cada fator da letra g).

```r
> sum(ifelse(salarioMilhao <= 36.98, 1, 0))
[1] 20
> sum(ifelse(salarioMilhao > 36.98, 1, 0))
[1] 20
```