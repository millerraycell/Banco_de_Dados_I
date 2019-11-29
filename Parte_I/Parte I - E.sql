CREATE TABLE cliente (
    cpf VARCHAR(11) PRIMARY KEY,
    rg VARCHAR(20),
    nome VARCHAR(50),
    telefone VARCHAR(11),
    estado_civil VARCHAR(10),
    genero VARCHAR(10),
    nacionaliade VARCHAR(20),
    cep VARCHAR(15) PRIMARY KEY,
    nome_local VARCHAR(30),
    numero INTEGER,
    bairro VARCHAR(20),
    complemento VARCHAR(100),
    cidade VARCHAR(50),
    estado VARCHAR(20),
    pais VARCHAR(30)
);

CREATE TABLE funcionario (
    cpf VARCHAR(11) PRIMARY KEY,
    rg VARCHAR(20),
    nome VARCHAR(50),
    telefone VARCHAR(11),
    estado_civil VARCHAR(10),
    genero VARCHAR(10),
    nacionaliade VARCHAR(20),
    cep VARCHAR(15) PRIMARY KEY,
    nome_local VARCHAR(30),
    numero INTEGER,
    bairro VARCHAR(20),
    complemento VARCHAR(100),
    cidade VARCHAR(50),
    estado VARCHAR(20),
    pais VARCHAR(30),
    numero_conta VARCHAR(10),
    agencia VARCHAR(10),
    senha VARCHAR(50)
);