
### Comandos iniciais

##### Testar o serviço do mySQL
* systemctl status mysql.service

##### iniciar serviço do mySQL
* sudo systemctl start mysql

---

### Acesso ao mySQL

##### Entrar
* mysql -u root -p

##### Sair
* quit

##### Testar conexão
* mysqladmin -p -u root version

---

### Configurações

##### Afrouxar senha (logado)
* uninstall plugin validate_password;

##### Desafrouxar senha (logado) (Nao está funcionando)
file: validade_password.so
> [mysqld]
> plugin-load-add=validade_password.so
* install plugin validade_password SONAME 'validade_password.so';

---

### Manipulação do usuários

##### Mostrar usuários do mySQL
* SELECT User FROM mysql.user;

##### Criar um novo usuário
* CREATE USER '{user}'@'{host}' IDENTIFIED BY '{password}';

> privileges = [ALL PRIVILEGES, CREATE, DROP, DELETE, INSERT, SELECT, UPDATE, GRAND OPTION]

##### Oferecer privilégios
* GRANT {pivileges} ON {db}.{table} TO '{user}'@'{host}';

##### Remover privilégios
* REVOKE {privileges} IN {db}.{table} FROM '{user}'@'{host}';