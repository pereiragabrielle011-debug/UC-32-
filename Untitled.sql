CREATE TABLE `alunos` (
  `id_aluno` int PRIMARY KEY,
  `nome` varchar(255),
  `idade` int,
  `telefone` varchar(255)
);

CREATE TABLE `planos` (
  `id_plano` int PRIMARY KEY,
  `nome_plano` varchar(255),
  `valor` decimal,
  `duracao_meses` int
);

CREATE TABLE `matriculas` (
  `id_matricula` int PRIMARY KEY,
  `id_aluno` int,
  `id_plano` int,
  `data_inicio` date,
  `status` varchar(255)
);

CREATE TABLE `pagamentos` (
  `id_pagamento` int PRIMARY KEY,
  `id_matricula` int,
  `valor` decimal,
  `data_pagamento` date,
  `forma_pagamento` varchar(255)
);

ALTER TABLE `matriculas` ADD FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`);

ALTER TABLE `matriculas` ADD FOREIGN KEY (`id_plano`) REFERENCES `planos` (`id_plano`);

ALTER TABLE `pagamentos` ADD FOREIGN KEY (`id_matricula`) REFERENCES `matriculas` (`id_matricula`);
