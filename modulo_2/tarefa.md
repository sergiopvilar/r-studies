---
title: "Introdução ao Software R - Curso I"
author: [Sérgio Ricardo Pacheco Vilar de Araújo]
date: "10 de Julho de 2020"
subject: "Markdown"
keywords: [Markdown, Example]
subtitle: "Módulo II - Tarefa"
lang: "pt"
titlepage: true
...

### 1. Transforme a variável situacao em um fator, indicando os rótulos de suas classes.

Script: 

```r
data <- read.delim("trabalhadores.txt")
sitFator <- factor(data$situacao, label = c("Ativo", "Demitido"), levels=1:2)
sitFator
```

Resultado:

```r
> sitFator
 [1] Demitido Ativo    Ativo    Ativo    Ativo    Demitido Ativo    Demitido Ativo   
[10] Ativo    Demitido Demitido Ativo    Ativo    Demitido Demitido Ativo    Ativo   
[19] Ativo    Ativo    Ativo    Ativo    Demitido Demitido Demitido Ativo    Demitido
[28] Ativo    Demitido Ativo   
Levels: Ativo Demitido
```

### 2. Construa uma tabela completa de frequências para a variável situacao.

Script:

```r
data <- read.delim("trabalhadores.txt")

sitFator <- factor(data$situacao, label = c("Ativo", "Demitido"), levels=1:2)
freq = table(sitFator)
freq
```

```r
> freq = table(sitFator)
> freq
sitFator
   Ativo Demitido 
      18       12 
```

### 3. Construa um gráfico de barras ou colunas para a variável situacao.

Script:

```r
data <- read.delim("trabalhadores.txt")

sitFator <- factor(data$situacao, label = c("Ativo", "Demitido"), levels=1:2)
barplot(table(sitFator), main="Situacao")
```

Resultado:

![Situação](./modulo_2/plot1.png)

### 4. Construa um gráfico de setores para a variável situacao.

Script:

```r
data <- read.delim("trabalhadores.txt")

sitFator <- factor(data$situacao, label = c("Ativo", "Demitido"), levels=1:2)
pie(table(sitFator))
```

![Situação](./modulo_2/plot2.png)

### 5. Construa uma tabela de frequências por classes com a variável salario

Script:

```r
data <- read.delim("trabalhadores.txt")

library(fdth)
salClasses = fdt(data$salario)
salClasses
```

Resultado:

```r
> salClasses
          Class limits f   rf rf(%) cf  cf(%)
  [19240.65,23604.667) 6 0.20 20.00  6  20.00
 [23604.667,27968.683) 4 0.13 13.33 10  33.33
   [27968.683,32332.7) 6 0.20 20.00 16  53.33
   [32332.7,36696.717) 1 0.03  3.33 17  56.67
 [36696.717,41060.733) 5 0.17 16.67 22  73.33
  [41060.733,45424.75) 8 0.27 26.67 30 100.00
```

### 6. Construa uma tabela de frequência por classes com a variável idade

Script:

```r
data <- read.delim("trabalhadores.txt")

library(fdth)
ageClasses = fdt(data$idade)
ageClasses
```

Resultado:

```r
> ageClasses
    Class limits f   rf rf(%) cf  cf(%)
  [18.81,24.933) 4 0.13 13.33  4  13.33
 [24.933,31.057) 6 0.20 20.00 10  33.33
  [31.057,37.18) 2 0.07  6.67 12  40.00
  [37.18,43.303) 8 0.27 26.67 20  66.67
 [43.303,49.427) 8 0.27 26.67 28  93.33
  [49.427,55.55) 2 0.07  6.67 30 100.00
````

### 7. Construa um boxplot para a variável salario por situação atual de emprego

Script:

```r
data <- read.delim("trabalhadores.txt")

sitFator <- factor(data$situacao, label = c("Ativo", "Demitido"), levels=1:2)
boxplot(data$salario ~ sitFator, col=rainbow(7), xlab="Situacao", ylab="Salario")
```

Resultado:

![Boxplot](./modulo_2/plot3.png)

### 8. Construa um gráfico de dispersão entre as variáveis salario e idade

Script:

```r
data <- read.delim("trabalhadores.txt")

plot(data$idade, data$salario,xlab = "Idade em anos", ylab = "Salario")
```

Resultado:

![Dispersão](./modulo_2/plot4.png)

### 9. Construa um histograma para a variável salario e insira a curva gaussiana

Script:

```r
data <- read.delim("trabalhadores.txt")

hist(data$salario,xlab = "Salario",ylab = "Densidade",col = blues9,freq = F,main = "")
curve(dnorm(x,mean = mean(data$salario),sd = sd(data$salario)), add = T)
```

Resultado:

![Dispersão](./modulo_2/plot5.png)


### 10. Construa um histograma para a variável idade e insira a curva gaussiana

Script:

```r
data <- read.delim("trabalhadores.txt")

hist(data$idade,xlab = "Idade",ylab = "Densidade",col = blues9,freq = F,main = "")
curve(dnorm(x,mean = mean(data$idade),sd = sd(data$idade)), add = T)
```

Resultado:

![Dispersão](./modulo_2/plot6.png)

### 11. Calcule as medidas de tendência central e de dispersão da variável salario

Script:

```r
library(modeest)
data <- read.delim("trabalhadores.txt")

mean(data$salario)
median(data$salario)
mfv(data$salario)
```

Resultado:

```r
> mean(data$salario)
[1] 33137.67
> median(data$salario)
[1] 31500
> mfv(data$salario)
[1] 43005
```

### 12. Calcule as medidas de tendência central e de dispersão da variável idade

Script:

```r
library(modeest)
data <- read.delim("trabalhadores.txt")

mean(data$idade)
median(data$idade)
mfv(data$idade)
```

Resultado:

```r
> mean(data$idade)
[1] 37.5
> median(data$idade)
[1] 41
> mfv(data$idade)
[1] 41
```

### 13. Calcule média, mediana e o desvio-padrão da variável idade por situação de emprego.

Script:

```r
data <- read.delim("trabalhadores.txt")

sitFator <- factor(data$situacao, label = c("Ativo", "Demitido"), levels=1:2)
tapply(data$idade, sitFator, mean)
tapply(data$idade, sitFator, median)
tapply(data$idade, sitFator, sd)
```

Resultado:

```r
> tapply(data$idade, sitFator, mean)
   Ativo Demitido 
31.55556 46.41667 
> tapply(data$idade, sitFator, median)
   Ativo Demitido 
    27.5     46.0 
> tapply(data$idade, sitFator, sd)
   Ativo Demitido 
8.325879 4.718596 
```

### 14. Construa uma tabela entre as variáveis salario e situacao, utilizando o comando compmeans

Script:

```r
library(descr)
data <- read.delim("trabalhadores.txt")

sitFator <- factor(data$situacao, label = c("Ativo", "Demitido"), levels=1:2)
compmeans(data$salario, sitFator)
```

Resultado:

```r
> compmeans(data$salario, sitFator)
Valor médio de "data$salario" segundo "sitFator"
            Média  N Desv. Pd.
Ativo    27798.89 18  6069.148
Demitido 41145.83 12  3824.089
Total    33137.67 30  8447.938
```

![Dispersão](./modulo_2/plot7.png)