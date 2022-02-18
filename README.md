
# CNPJ-SQLITE

Fork do [CNPJ-SQLITE](https://github.com/rictom/cnpj-sqlite/).

Script em python para carregar os arquivos de cnpj dos dados públicos da Receita Federal em formato SQLite.

A partir de 2021 os dados da Receita Federal estão disponíveis nesse [link](https://www.gov.br/receitafederal/pt-br/assuntos/orientacao-tributaria/cadastros/consultas/dados-publicos-cnpj) (ou direto [aqui](http://200.152.38.155/CNPJ/) no servidor de arquivos) em formato .CSV separados em arquivos .ZIP. 

## Pré-requisitos:

### Software

|Linguagem|Gerenciador de pacotes|Bibliotecas|Sistema Operacional|Utilitários
|---------|----------------------|-----------|-------------------|-----------
Python 3.8 (ou versão maior)|Poetry|Loguru, SQLAlchemy, Dask e Pandas|GNU/Linux ou Mac OS*|Axel e SQLite.


_* Para executar o arquivo _download_data.sh_ (apesar que acredito que possa funcionar no WSL e/ou Cygwin do Windows)._

### Hardware

|Processador|Armazenamento|RAM|
|-----------|-------------|---|
|i3 (ou superior)|Espaço livre de no mínimo de 60 GB.|8 GB (ou superior)|


## Utilizando o script:

### Download dos arquivos:
Baixe todos os arquivos utilizando o script _download_data.sh_.

No Terminal Linux com o Bash deverá ser o comando:
  ``` $ ./download_data.sh ```
 
 
### Observação
Vale ressaltar que apesar de estar sendo utilizado um gerenciador de downloads, o download total do arquivo ainda poderá demorar, e no momento da descompreensão dos arquivos a máquina pode ficar irresponsiva, devido a quantidade de dados.

### Geração de arquivo para o formato SQLite.

Primeiro ative o ambiente virtual do _Poetry_:

```$ poetry shell ```

Caso não tenha eexecutado ainda o install das dependências, chame:

```$ poetry install ```

E depois no terminal chame o script:
```$ ./data_to_sqlite.py```

## Geração de arquivo JSON

Para geração de arquivo JSON execute o arquivo _data_to_json.sh_:

```$ ./data_to_json.sh```


## Histórico de versões

versão 0.2 (dezembro/2021)
- Refatoramento e melhorias do código,  por Jean Landim.
- Adição de script SQL para converter algumas tabelas para JSON

versão 0.1 (julho/2021)
- primeira versão

## Créditos

A versão original desse repositório encontra-se [CNPJ-SQLITE](https://github.com/rictom/cnpj-sqlite/) e sinceros agradecimentos ao usuário [rictom](https://github.com/rictom/cnpj-sqlite), autor original do repositório.
Lá também geralmente o arquivo SQLite já tratado.
