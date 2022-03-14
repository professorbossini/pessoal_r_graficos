#exibindo a documentação
?pressure
#vendo a correlação
cor(pressure)

#vendo a base
pressure
#montando o gráfico
p <- ggplot (pressure, aes (x = temperature, y = pressure))
#vendo as camadas. Ainda não tem nenhuma
p$layers

#Adicionando duas camadas: uma para pontos e outro para linha
p <- p + geom_point () + geom_line()
#vendo as duas camadas
p$layers
#gerando o gráfico que deve aparecer na aba Plots
p

#removendo a camada 1, neste caso, os pontos
p$layers[1] <- NULL

#vendo as camadas de novo, deve ter só uma agora
p$layers

#vamos salvar os graficos em pdf
pdf ("grafico.pdf")

#estamos montando o gráfico de novo
p <- ggplot (pressure, aes (x = temperature, y = pressure))


#adicionamos a camada de pontos
p <- p + geom_point()

#adicionamos a camada de linha
p <- p + geom_line()

#imprime em pdf
print(p)

#fecha o arquivo e volta a saída para o padrão
dev.off()


#montando o gráfico para salvar com ggsave, o que permite salvar em pdf, jpg e png
p <- ggplot (pressure, aes (x = temperature, y = pressure))

#adiciona camada de pontos
p <- p + geom_point()

#mostra a documentação de ggsave
help(ggsave)
#salva
ggsave ("grafico.png", width = 6, height = 4)

#################################################################
#legendas

#-10, -9, ..., 9, 10
a <- -10:10
a

#-5, -4, ..., 4, 5
f1 <- a + 5
f1

#15, 12.1, 9.4, ..., -5.9, -5
f2 <- (a ** 2) / 10 -a - 5
f2

#ver documentações
help(data)
help (data.frame)

#gerar um dataframe
df <- data.frame (a, f1, f2)

#documentação
help(head)

#6 primeiros, por padrão
head(df)

#10 primeiros
head (df, 10)

#todos menos os dois últimos
head (df, -2)

#apagar o gráfico da memória, se desejar
p <- NULL

#construindo o gráfico, ainda sem camadas
p <- ggplot (df, aes (x = a))
p

#doc da aes (ver colour, por exemplo)
help (aes)


#pontos referentes à coluna f1
#colour está sendo usado para escolher o título da legenda
p <- p + geom_point (aes (y = f1, colour='f1'))
p

#curva referente à coluna f2
p <- p + geom_line (aes (y = f2, colour = 'f2'))
p

#legenda e título
p <- p + labs (x = 'x', y = 'y', colour = 'Legenda:', title="Meu Teste")
p

#tema do gráfico
p <- p + theme_classic()
p

#outro tema
p <- p + theme_linedraw()
p

#outro tema
p <- p + theme_light()
p

#outro tema
p <- p + theme_dark()
p

#outro tema
p <- p + theme_void()
p

#outro tema
p <- p + theme_minimal()
p

#usando a função theme para alterar detalhes do gráfico
#hjust: ajuste horizontal: 0.5 centraliza, testar valores de 0 a 1
p <- p + theme (plot.title = element_text (hjust = 0.5))
p

#vendo as layers (somente os geoms, themes não entram)
p$layers



#trocando cor dos nomes dos eixos
p <- p + theme (axis.title = element_text (color = 'blue'))
p

#caixa na legenda
p <- p + theme (legend.background = element_rect (linetype = 'solid'))
p

#limpando o tema se quiser
p$theme <- NULL
p

#legenda na parte de baixo
p <- p + theme (legend.position = 'bottom')
p

#legenda em posição qualquer
#aqui fica bem no meio da tela
p <- p + theme (legend.position = c(0.5, 0.5))
p

#legenda em posição qualquer
p <- p + theme (legend.position = c(0.85, 0.5))
p

################################################################3