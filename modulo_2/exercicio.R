install.packages('descr')
install.packages("fdth")
install.packages("modeest")

library(descr)
library(fdth)
library(modeest)

milsa = read.delim("trabalhadores.txt")
dados = data.frame(milsa)

str(dados)
head(dados)

dados$situacao = factor(dados$situacao, label = c("solteiro", "casado"), levels = 1:2)
freq = table(dados$situacao)
freq_rel = prop.table(freq)
freq_rel

p_preq_rel = 100*prop.table(freq)
p_preq_rel

freq(dados$situacao)

tabClasses = fdt(dados$salario)
tabClasses

crosstab(dados$situacao, dados$idade)
summary(dados)
mean(dados$salario)
median(dados$salario)

quantile(dados$salario)
quantile(dados$salario, probs = seq(0, 1, 0.1))

mfv(dados$idade)
var(dados$salario)
sd(dados$salario)

# Média baseado numa quantitativa
tapply(dados$salario, dados$situacao, mean)
tapply(dados$salario, dados$situacao, sd)

compmeans(dados$salario, dados$situacao)

barplot(table(dados$situacao), main = "Estado Civil")
