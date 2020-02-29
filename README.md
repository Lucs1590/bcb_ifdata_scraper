# bcb_ifdata_scraper

Captura e faz o download dos relatórios do [BACEN IFDATA](https://www3.bcb.gov.br/ifdata/index.html).

## Iniciando

Para iniciar o processo primeiro é necessario a criação de um ambiente virtual no pipenv e instalação das dependências, que pode ser feita com o comando abaixo:

´´´
> pipenv install
> pipenv shell
´´´

## Capturando arquivos

A captura dos arquivos do site é realizada de acordo com o tipo de instituição financeira, através dos scripts abaixo:
Lembre-se que o [Chrome Driver](https://chromedriver.chromium.org/downloads) precisa estar no PATH do seu ambiente para ca captura funcionar corretamente.

´´´
> python captura_if_data_instituicoes_individuais.py
> python captura_if_data_conglomerados_financeiros.py
> python captura_if_data_conglomerados_prudenciais.py
> python captura_if_data_instituicoes_operacoes_cambio.py
´´´

## Consolidando arquivos

Após a captura dos arquivos, eles são consolidados para facilitar a importação.

´´´
> python consolida_conglomerados_prudenciais.py
> python consolida_conglomerados_financeiros.py
> python consolida_instituicoes_individuais.py
> python consolida_instituicoes_operacoes_cambio.py
´´´

## Importando arquivos para a base de dados

Após a importação, os arquivos consolidados na pasta [bases] já podem ser importados para a base de dados.

´´´
> python importa_conglomerados_prudenciais.py
> python importa_conglomerados_financeiros.py
> python importa_instituicoes_individuais.py
> python importa_instituicoes_operacoes_cambio.py
´´´

## Arquivos de base em csv

Após a finalização da importação, caso o parâmetro SAVE_IMPORT_CSV estiver marcado como True, arquivos de saída com a base estará disponível na pasta [bases_import].


## Parâmetros

Segue abaixo a configuração padrão do banco de dados.

´´´
# URI da base de dados
SQLALCHEMY_DATABASE_URI='sqlite:///file.db'
# indica se a importação deverá ser salva num arquivo csv
SAVE_IMPORT_CSV=True
# indica se os arquivos de import deverão ser salvos no banco de dados
IMPORT_TO_DATABASE=True
´´´