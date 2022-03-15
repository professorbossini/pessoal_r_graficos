cancer <- read.csv("cancer.txt", sep="")
cancer

#1. Faça o histograma das variáveis LDH, ALB e N. Use a descrição da coluna como título de
#cada um. Salve o gráfico no formato pdf.

ldh_histogram <- ggplot (cancer, aes (x = LDH)) + geom_histogram() +
  theme (plot.title = element_text(hjust = 0.5)) +
  labs (title = "LDH")
ldh_histogram

alb_histogram <- ggplot (cancer, aes (x = ALB)) + geom_histogram()+
  theme (plot.title = element_text(hjust = 0.5)) +
  labs (title = "ALB")
alb_histogram

n_histogram <- ggplot (cancer, aes (x = N)) + geom_histogram() +
  theme (plot.title = element_text(hjust = 0.5)) +
  labs (title = "N")
n_histogram

pdf (file = "histogramas_simples.pdf")
plot (ldh_histogram)
plot (alb_histogram)
plot (n_histogram)
dev.off()

#mere testing purposes
# cancer['Grupo'] <- ifelse (cancer['Ident'] <= 20, 1, 2)
# cancer
#2. Refaça o histograma, discriminando os tipos de diagnóstico.

#position para colocar lado a lado
#sem position empilha
ldh_histogram_by_diagnosis_type <- 
  ggplot (cancer, aes (x = LDH, group = Grupo, fill = Grupo)) + 
  geom_histogram(bins = 10, position = position_dodge2())
ldh_histogram_by_diagnosis_type

alb_histogram_by_diagnosis_type <-
  ggplot (cancer, aes (x = ALB, group = Grupo, fill = Grupo)) + 
  geom_histogram(bins = 10)
alb_histogram_by_diagnosis_type

n_histogram_by_diagnosis_type <-
  ggplot (cancer, aes (x = N, group = Grupo, fill = Grupo)) +
  geom_histogram (bins = 10)
n_histogram_by_diagnosis_type
# + 
#   labs (title = "LDH") +
#   theme (plot.title = element_text (hjust = 0.5))
# ldh_histogram_by_diagnosis_type

#3.  Médicos afirmam que o grupo dos falso-positivos é mais jovem do que o dos falso
#negativos. Compare as idades destes dois grupos usando gráfico de barras. Salve o gráfico no
#formato JPG.


