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

