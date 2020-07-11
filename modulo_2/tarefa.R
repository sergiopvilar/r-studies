data <- read.delim("trabalhadores.txt")

sitFator <- factor(data$situacao, label = c("Ativo", "Demitido"), levels=1:2)

boxplot(data$salario ~ sitFator, xlab="Situação", ylab="Salário")
