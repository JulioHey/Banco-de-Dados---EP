# Instruções

## Instalação de Bibliotecas

* Você deve possuir o python em seu computador;

### Package Installer Python 

* Para a instalação das bibliotecas você deve possui o pip instalado:
1. Windows
```bash
py get-pip.py
```

* Referência: https://pip.pypa.io/en/stable/installation/

### Instalação das bibliotecas utilizadas em nosso código

#### Pydantic

* Comando:

```bash
pip install pydantic
```

* Referência: https://docs.pydantic.dev/

#### Mysql Connector

* Comando:

```bash
pip install mysql
```

* Referência: https://www.w3schools.com/python/python_mysql_getstarted.asp

#### FastApi

* Comando:

```bash
pip install fastapi
```

* Referência: https://fastapi.tiangolo.com/

## Criando nosso servidor

### Estrutura de Arquivos

* main.py
* conn.py
* model/
  * {...}
* router/
  * {...}

### Arquivo conn\.py

* Primeiro deve se ter certeza de ter um banco mysql rodando em seu computador
* Após isso criamos nosso arquivo: conn.py

```py
import mysql.connector

try:
    conn = mysql.connector.connect(user='UsuarioBancodeDados', password="SenhaUsuárioBancodeDados",
                            host='127.0.0.1',
                            database='Database')
except Exception as e:
    print("Conexão falhou")
```

## Rodando nosso servidor

* Com todos arquivos prontos e bibliotecas instalados podemos rodar nosso servidor
* As routas para o crud são:
  * POST /{nome_da_tabela}/ => CREATE;
  * GET /{nome_da_tabela}/ => READ;
  * PUT /{nome_da_tabela}/ => UPDATE;
  * DELETE /{nome_da_tabela}/ => DELETE;
* As especificações de como cada chamada a API deve ser feita estão no vídeo
* Para rodar nosso servidor devemos rodar apenas, esse comando no root do servidor:

```bash
uvicorn main:app
```

* Se a saída for algo parecido com isso tudo ocorreu de forma correta:

![output](/assets/output.png)