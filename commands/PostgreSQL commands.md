### Resumo dos comandos do postgreSQL

##### Usando o postgreSQL pelo terminal
* psql -d [db] -U [user] -p [port]  
OBS: port especifica o cluster

##### Alterar senha
* alter user postgres with password 'password';

##### Listar bancos
* \list
* \l

##### Conectar a um banco
* \connect [db]
* \c [db]

##### Ver informações de conexão
* \conninfo

##### Listar tabalas do banco de dados atual
* \dt

##### Criar banco de dados
* CREATE DATABASE [db];

##### Apagar banco de dados
* DROP DATABASE [db];

---

##### Listar clusters
* pg_lsclusters

##### Criar cluster
* initdb -D /var/lib/postgresql/[version]/[cluster] -k -A peer
* pg_createcluster [versao] [cluster]

##### Apagar cluster
* pg_dropcluster [version] [cluster]

##### Iniciar servidor do cluster
* pg_ctl start -D /etc/postgresql/[version]/[cluster]

##### Parar servidor do cluster
* pg_ctl stop -D /etc/postgresql/[version]/[cluster]

##### Reiniciar servidor do cluster
* pg_ctl restart -D /etc/postgresql/[version]/[cluster]
