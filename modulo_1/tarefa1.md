---
title: "Introdução ao Software R - Curso I"
author: [Sérgio Ricardo Pacheco Vilar de Araújo]
date: "16 de Junho de 2020"
subject: "Markdown"
keywords: [Markdown, Example]
subtitle: "Tarefa 1"
lang: "pt"
titlepage: true
...

# Questão 1

__A)__ 3.000000 0.000000 3.162278 3.605551 3.872983 4.123106 4.242641 4.123106 4.690416 3.316625 3.872983

__B)__ 2.197225 -Inf 2.302585 2.564949 2.708050 2.833213 2.890372 2.833213 3.091042 2.397895 2.708050

__C)__ 1.000000 0.000000 1.041393 1.146128 1.204120 1.255273 1.278754 1.255273 1.361728 1.079181 1.204120

__D)__ 1 0 100 169 225 289 324 289 484 121 225


## Código:

```r
temp <- c(9, 0, 10, 13, 15, 17, 18, 17, 22, 11, 15)

sqrt(temp) # Letra A
log(temp) # Letra B
log10(temp+1) # Letra C
temp^2 # Letra D
```

# Questão 2

**Máximo:** 34

**Mínimo:** 14

**Quarto tempo:** 15


## Código:

```r
tempo <- c(18, 14, 14, 15, 14, 34, 16, 17, 21, 26)

max(tempo)
min(tempo)
tempo[4]
```

# Questão 3

**Máximo:** 26

**Mínimo:** 14


## Código:

```r
tempo <- c(18, 14, 14, 15, 14, 34, 16, 17, 21, 26)
tempo[6] <- 15

max(tempo)
min(tempo)
```

# Questão 4

__A)__ 2  4  6  8 10  1

__B)__ 4  6 10 14 22 26

__C)__ 6 e 6

__D)__ 3  6 10 14 20 13

__E)__ 5

__F)__ 2  3  7 11 13


## Código:

```r
x <- c(1,3,5,7,9,0)
y <- c(2,3,5,7,11,13)

x+1 # Letra A
y*2 # Letra B

# Letra C
length(x)
length(y)

x + y # Letra D
y[3] # Letra E
y[-3] # Letra F
```
