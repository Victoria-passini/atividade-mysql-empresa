CREATE DATABASE Empresa;
USE Empresa;
CREATE TABLE Funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(100)
);

CREATE TABLE SALARIOS ( 
id INT PRIMARY KEY AUTO_INCREMENT,
funcionario_id INT,
salario DECIMAL(10,2),
data_pagamento DATE,
FOREIGN KEY (funcionario_id) REFERENCES funcionario(id)
);

INSERT INTO funcionarios (nome, cargo) VALUES ('FELICIDADE', 'GERENTE');
INSERT INTO funcionarios (nome,cargo) VALUES ('PAZ', 'ANALISTA ');
INSERT INTO funcionarios (nome,cargo) VALUES ('AMOR', 'AUXILIAR ');
INSERT INTO funcionarios (nome,cargo) VALUES ('HUMOR', 'ESTOQUISTA ');
INSERT INTO funcionarios (nome,cargo) VALUES ('ALEGRIA', 'ADMINISTRADORA ');


INSERT INTO salarios (funcionario_id, salario, data_pagamento) VALUE (1, 15000.00, '2026-06-15');
INSERT INTO salarios (funcionario_id, salario, data_pagamento) VALUE (2, 5500.00, '2026-06-15');
INSERT INTO salarios (funcionario_id, salario, data_pagamento) VALUE (3, 4500.00, '2026-06-15');
INSERT INTO salarios (funcionario_id, salario, data_pagamento) VALUE (4, 6500.00, '2026-06-15');
INSERT INTO salarios (funcionario_id, salario, data_pagamento) VALUE (5, 8500.00, '2026-06-15');

SELECT * FROM funcionarios;
SELECT * FROM salarios;

UPDATE salarios SET salario = 10000.00 WHERE funcionario_id = 1;

DELETE FROM salarios  WHERE funcionario_id = 1;
DELETE FROM funcionarios WHERE id = 1;

SELECT 
    funcionarios.cargo,
    AVG(salarios.salario) AS salario_medio
FROM funcionarios
INNER JOIN salarios ON funcionarios.id = salarios.funcionario_id
GROUP BY funcionarios.cargo;


SELECT 
funcionarios.nome,
funcionarios.cargo,
salarios.salario
FROM funcionarios
INNER JOIN salarios ON funcionarios.id = salarios.funcionario_id;
