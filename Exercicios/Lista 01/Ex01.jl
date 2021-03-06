using PyPlot

file_directory = "../../Listas/ml-100k/u.data"

f = open(file_directory)

file_content = readdlm(f)

close(f)

#file_content = sortrows(file_content, by = x->(x[1]))
file_content = sort(file_content[:, 1])

rates_by_user = sort(hist(file_content, convert(Int64, file_content[end]))[2])

plot(1:convert(Int64, file_content[end]), rates_by_user)

grid("on")
xlabel("Quantidade de Notas")
ylabel("Número de Usuários")
title("Notas")

show()
