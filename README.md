# CRUD de Postos de Gasolina

## Descrição
Esse projeto é uma pequena aplicação desenvolvida em Ruby on Rails que tem como objetivo gerenciar postos de gasolina e suas bombas de combustível. A aplicação oferece um CRUD, permitindo criar, visualizar, editar e excluir registros de postos e bombas, além de estabelecer uma associação onde um posto pode ter várias bombas.

## Funcionalidades
- Gerenciamento dos Postos
    - Criar, listar, editar e excluir postos.
    - Atributos: Nome do posto (name) e Endereço do posto (address)
- Gerenciamento das Bombas de combustível
    - Criar, listar, editar e excluir bombas.
    - Atributos: Tipo de combustível (fuel_type) e Capacidade (capacity)
    - Sempre associando a um Posto através da relação *belongs_to*
- Navegação
    - Menu básico de navegação nas views para facilitar o acesso às páginas da Lista de Postos, Lista de Bombas, Criação de um novo Posto e Criação de uma nova Bomba

## Tecnologias Utilizadas e Pré-requisitos
- Ruby 3.4.2
- Rails 8.0.1
- SQLite3 (como banco de dados padrão do Rails)

## Instalação e configuração
1) Clone o repositório
```bash
git clone https://github.com/zvitx/Gas_Station_Project.git
cd Gas_station_Project
```
2) Instale as dependências
```bash
bundle install
```
3) Configure o banco de dados
```bash
rails db:migrate
```
4) Execute o servidor
```bash
rails s
```
5) Acesse a aplicação em seu navegador de preferência pelo *http://localhost:3000*

## Melhorias futuras
- Funcionalidade de importar e exportar dados de postos e bombas por meio de um .csv
- Melhorias visuais para facilitar o uso e navegação pela aplicação
- Fazer deploy e manutenção da aplicação