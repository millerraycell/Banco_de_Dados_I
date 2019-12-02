CREATE TABLE cliente (
    cpf VARCHAR(11) PRIMARY KEY,
    rg VARCHAR(20),
    nome VARCHAR(50),
    telefone VARCHAR(11),
    estado_civil VARCHAR(10),
    genero VARCHAR(10),
    nacionaliade VARCHAR(20),
    cep VARCHAR(15),
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
    cep VARCHAR(15),
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

CREATE TABLE processo(
    id INTEGER PRIMARY KEY,
    id_cliente VARCHAR(11),
    descricao VARCHAR(100),
    tipo VARCHAR(30),
    valor FLOAT(2),
    data_processo DATE,

    FOREIGN KEY (id_cliente) REFERENCES cliente(cpf)
);

CREATE TABLE advogado (
    cpf VARCHAR(11) PRIMARY KEY,
    oab VARCHAR(10),
    gerente BOOLEAN,

    FOREIGN KEY (cpf) REFERENCES funcionario(cpf)
);

CREATE TABLE estagiario (
    cpf VARCHAR(11) PRIMARY KEY,
    faculdade VARCHAR(10),

    FOREIGN KEY (cpf) REFERENCES funcionario(cpf)
);

CREATE TABLE processo_advogado(
    id_advogado VARCHAR(11),
    id_processo INTEGER,
    status_processo VARCHAR(20),
	
	PRIMARY KEY(id_advogado, id_processo),

    FOREIGN KEY (id_advogado) REFERENCES advogado(cpf),
	FOREIGN KEY (id_processo) REFERENCES processo(id)
);

INSERT INTO cliente VALUES
('12345678911','1321654','Acauan Cardoso', '991235678', 'Solteiro','Masculino', 'Brasilero', '6300000', 'Rua 1', 1020, 'Paraviana', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil'),
('51681513844','55484','Miller Raycell', '995672213', 'Solteiro', 'Masculino','Brasilero', '6300000', 'Rua 10', 25, 'Bairro dos Estados', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil'),
('14626845150','145411','Tarlison Sander', '981256032', 'Casado', 'Masculino','Brasilero', '6300000', 'Rua 15', 91, 'Cambará', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil'),
('01165056165','965161','André Leandro', '999806654', 'Casado', 'Masculino','Brasilero', '6300000', 'Rua 19', 180, 'São Vicente', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil'),
('60151646004','11101','Markus Kaul', '991146327', 'Solteiro', 'Masculino','Brasilero', '6300000', 'Rua 02', 91, 'Caetano Filho', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil'),
('46844512010','783121','Joshua Kook', '991122354', 'Divorciado','Masculino', 'Chines', '6300000', 'Rua 31', 97, 'Cambará', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil'),
('18956131031','11002','Victor Barbosa', '991869911', 'Desquitado', 'Masculino','Brasilero', '6300000', 'Rua 17', 56, 'Asa Branca', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil'),
('16816512035','998746','Jobema Rocha', '989630102', 'Solteiro', 'Masculino','Brasilero', '6300000', 'Rua 10', 12254, 'Joquei Clube', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil');

INSERT INTO funcionario VALUES
('46168413021','646814','Mario Junior', '985743128', 'Solteiro','Masculino', 'Brasilero', '6300000', 'Rua 25', 1200, 'Paraviana', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil','985255', '41255','123456789'),
('30164321046','64615','Adriel Pessoa', '991456429', 'Solteiro', 'Masculino','Brasilero', '6300000', 'Rua 42',75, 'Bairro dos Estados', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil','646841', '41255','123456789'),
('04601840436','981911','Juliana Pessoa', '998522553', 'Casado', 'Feminino','Brasilero', '6300000', 'Rua 15', 100, 'Cambará', 'Sem Complemento', 'Boa Vista', 'Roraima', 'Brasil','189681', '026165','123456789');


INSERT INTO advogado VALUES
('30164321046', '215 OAB-RR', TRUE),
('04601840436', '485 OAB-RR', FALSE);

INSERT INTO estagiario VALUES
('46168413021', 'Estacio');

INSERT INTO processo VALUES
(1, '12345678911', 'Furto', 'Criminal', 800.00, '2019-08-12'),
(2, '51681513844', 'Assalto', 'Criminal', 1000.00, '2019-10-22'),
(3, '14626845150', 'Homicidio', 'Criminal', 30000.00, '2018-02-02'),
(4, '01165056165', 'Trafico de drogas', 'Civil', 15000.00, '2017-08-30'),
(5, '12345678911', 'Sonegação de imposto', 'Tributário', 8900.00, '2019-12-01'),
(6, '12345678911', 'Estupro', 'Criminal', 50000.00, '2019-04-09'),
(7, '16816512035', 'Estelionato', 'Criminal', 2000.00, '2019-01-20'),
(8, '12345678911', 'Queimada', 'Ambiental', 100000.00, '2017-10-07'),
(9, '16816512035', 'Hacking', 'Tecnologia', 3500.00, '2019-08-12');

INSERT INTO processo_advogado VALUES
('30164321046', 1, 'Julgamento'),
('30164321046', 2, 'Transito'),
('04601840436', 3, 'Julgado'),
('30164321046', 4, 'Transito'),
('04601840436', 5, 'Julgamento'),
('30164321046', 6, 'Julgamento'),
('04601840436', 7, 'Transito'),
('30164321046', 8, 'Julgamento'),
('04601840436', 9, 'Transito');