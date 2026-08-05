# Database

Banco de dados. Armazenamento, desde o início (50's, 60's), existem vários modelos (paradigmas), ex.: lote, arquivo, hierárquico, ..., RELACIONAL, se baseia em uma linguagem específica: SQL.

SQL, existe desde a década de 70. SQL é estável e estabelecida.

SQL é padronizada:
https://blog.ansi.org/ansi/sql-standard-iso-iec-9075-2023-ansi-x3-135/
https://en.wikipedia.org/wiki/SQL:1999

Mas os fabricantes/distribuidores fazer versões "customizadas".

Structured
Query
Language
Linguagem de Consulta Estruturada

A sintaxe tem diferenças entre bancos, ex.: MySQL (MariaDB), PostgreSQL, Oracle (~10K USD/Mo), IBM DB2, Microsoft SQL Server, etc.

Self-hosting: hospedar o próprio servidor de banco.
Managed-hosting: pago mensalmente e hospedado na "nuvem" -- _fog computing_, ex.: AWS RDS, Azure Database, Supabase, ...
Embedded/in-process database: o motor (engine) do banco roda junto com a aplicação (Node, Python, PHP, ..), ex.: SQL Server CE, Hypersonic Database, Derby Database, **sqlite**.

História do SQLite:
https://www.youtube.com/watch?v=5zQdYx-fqJg

sqlite3

No Windows:
- abre o prompt de comando
- executa: `winget install SQLite.SQLite`
- fecha o prompt
- abre um prompt novo
- executa: `sqlite3`

Banco de dados dinâmico em oposição ao estrito, ex.:
É possível salvar em uma coluna texto um valor numérico.
Ex, uma coluna `nome VARCHAR(50)` (vira uma coluna `TEXT`) o comprimento não é respeitado.

SQLite tem tipagem dinâmica com poucos tipos:
https://www.sqlite.org/datatype3.html

Mas a sintaxe vinda de MySQL e PostgreSQL, por exemplo, é aceita.

```
sqlite> .tables
sqlite> create table usuario (nome text);
sqlite> .tables
usuario
sqlite> .schema usuario
CREATE TABLE usuario (nome text);
sqlite> select * from usuario;
sqlite> insert into usuario (nome) values ('Waldemar');
sqlite> select * from usuario;
Waldemar
sqlite> .mode box
sqlite> select * from usuario;
```

Criar um banco persistente:

```
> sqlite3 info.db
SQLite version 3.45.1 2024-01-30 16:01:20
Enter ".help" for usage hints.
sqlite> .open nada.db
sqlite> .open info.db
sqlite> create table usuario (nome text);
sqlite> insert into usuario (nome) values ('Thiago');
sqlite> .exit
```