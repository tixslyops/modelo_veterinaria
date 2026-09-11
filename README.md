# modelo_veterinaria

# Sistema de Banco de Dados para Clínica Veterinária

## Sobre o projeto

Este trabalho apresenta a criação de um banco de dados para uma clínica veterinária. A proposta é organizar os principais dados utilizados pela clínica e estabelecer a relação entre eles.

## Dados armazenados

O banco foi dividido em quatro tabelas principais:

* **Cliente:** informações dos donos dos animais.
* **Animal:** informações dos animais atendidos pela clínica.
* **Veterinario:** dados dos profissionais que trabalham na clínica.
* **Consulta:** informações sobre os atendimentos realizados.

## Funcionamento

Cada cliente pode cadastrar vários animais, enquanto cada animal está relacionado a apenas um cliente.

Os veterinários podem realizar várias consultas e os animais também podem passar por várias consultas. Dessa forma, a tabela de consultas relaciona o veterinário responsável ao animal atendido.

## Modelagem

O projeto foi desenvolvido seguindo as etapas de:

1. Identificação das entidades e atributos;
2. Criação do Diagrama Entidade-Relacionamento (DER);
3. Conversão para o modelo lógico;
4. Definição das chaves primárias e estrangeiras;
5. Criação do banco de dados utilizando SQL.

## Ferramentas utilizadas

* MySQL Workbench
* SQL
* Diagrama Entidade-Relacionamento (DER)

## Objetivo

O objetivo do projeto é representar de maneira organizada as informações da clínica, facilitando o armazenamento e o relacionamento dos dados de clientes, animais, veterinários e consultas.
