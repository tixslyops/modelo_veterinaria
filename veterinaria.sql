CREATE DATABASE clinica_veterinaria;

USE clinica_veterinaria;

-- Tabela dos clientes
CREATE TABLE Cliente (
    CPF VARCHAR(11) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    PRIMARY KEY (CPF)
);

-- Tabela dos veterinários
CREATE TABLE Veterinario (
    CRMV VARCHAR(20) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Data_Admissao DATE NOT NULL,
    Salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (CRMV)
);

-- Tabela dos animais
CREATE TABLE Animal (
    Codigo INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Ano_Nascimento INT NOT NULL,
    Raca VARCHAR(50) NOT NULL,
    CPF_Cliente VARCHAR(11) NOT NULL,

    PRIMARY KEY (Codigo),

    FOREIGN KEY (CPF_Cliente)
        REFERENCES Cliente(CPF)
);

-- Tabela das consultas
CREATE TABLE Consulta (
    CRMV VARCHAR(20) NOT NULL,
    Codigo_Animal INT NOT NULL,
    Data_Consulta DATE NOT NULL,
    Hora_Consulta TIME NOT NULL,
    Motivo VARCHAR(255) NOT NULL,

    PRIMARY KEY (
        CRMV,
        Codigo_Animal,
        Data_Consulta,
        Hora_Consulta
    ),

    FOREIGN KEY (CRMV)
        REFERENCES Veterinario(CRMV),

    FOREIGN KEY (Codigo_Animal)
        REFERENCES Animal(Codigo)
);
