# Resumo dos comandos do postgreSQL

##### Usando o postgreSQL pelo terminal
* psql -d {db} -U {user} -p {port}  
OBS: port especifica o cluster

##### Listar bancos
* \list
* \t

##### Conectar a um banco
* \connect {nome}
* \c {nome}

##### Ver informações de conexão
* \conninfo

##### Listar tabalas do banco de dados atual
* \dt

##### Apagar banco de dados
* DROP DATABASE {nome};

##### Criar banco de dados
* CREATE DATABASE {nome};
