salario <- data$salario
idade <- data$idade
formacao <- data$formacao

salarioMilhao = salario/1000000

formacaoFator <- factor(formacao, label = c("Nenhuma", "Bacharelado", "MBA", "LLM", "Mestrado", "PhD"), levels = 0:5)

frame <- data.frame(salarioMilhao, formacaoFator)

max(salario)
min(salario)
length(salario)

max(idade)
min(idade)
length(idade)

salarioFator <- ifelse(salarioMilhao <= 36.98, "menor igual 36,98", "maior 36,98")

sum(ifelse(salarioMilhao <= 36.98, 1, 0))
sum(ifelse(salarioMilhao > 36.98, 1, 0))
