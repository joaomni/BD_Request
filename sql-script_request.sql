-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql208.byetcluster.com
-- Tempo de geração: 30/10/2019 às 01:14
-- Versão do servidor: 5.6.45-86.1
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `unaux_24573504_requerimento`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_aluno`
--

CREATE TABLE `tb_aluno` (
  `cd_aluno` int(10) UNSIGNED NOT NULL,
  `nr_rm` varchar(11) NOT NULL,
  `nm_aluno` varchar(50) NOT NULL,
  `ds_email` varchar(200) NOT NULL,
  `ds_senha` varchar(50) NOT NULL,
  `ds_tipoAluno` int(11) NOT NULL,
  `nr_rg` varchar(9) DEFAULT NULL,
  `nm_turma` varchar(7) DEFAULT NULL,
  `nm_logradouro` varchar(50) DEFAULT NULL,
  `nr_logradouro` varchar(11) DEFAULT NULL,
  `nm_bairro` varchar(50) DEFAULT NULL,
  `nm_cidade` varchar(50) DEFAULT NULL,
  `nr_telefone` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_aluno`
--

INSERT INTO `tb_aluno` (`cd_aluno`, `nr_rm`, `nm_aluno`, `ds_email`, `ds_senha`, `ds_tipoAluno`, `nr_rg`, `nm_turma`, `nm_logradouro`, `nr_logradouro`, `nm_bairro`, `nm_cidade`, `nr_telefone`) VALUES
(1, '12345', 'Fulaninho da Silva Leonel', 'fulaninho123@hotmail.com', '', 0, '123456789', '1DS1', 'Estrada do Rio Negro', '1245', 'Jardim Vila Nova', 'Itanhaém', '1334215874'),
(2, '1020', 'Cafezinho Camposano Guerra', 'euquerocafe@gmail.com', '202cb962ac59075b964b07152d234b70', 0, '145213657', '2ADM2', 'Estradinha do café', '402', 'Bairro do shop', 'Praia Grande', '13997412145'),
(3, '24132', 'Brenno Henrique de Oliveira Barros', 'brenno5201henrique@gmail.com', '', 0, '987456321', '2EDI2', 'Coronel Branco', '264', 'Coronel', 'Peruibe', '13996144125'),
(4, '11223', 'Fylipe Pablo de Oliveira Barros', 'fylipinho@gmail.com', '202cb962ac59075b964b07152d234b70', 0, '325846505', '4ENFE4', 'Jardim do Rio Branco', '294', 'AguapÃ©u', 'Itanhaém', '13996177406'),
(5, '25102', 'Sabrina Oliveira de Abreu', 'binah.olive@hotmail.com', '', 0, '251020022', '2ENME2', 'Vila Loty', '251', 'Florida', 'Mongaguá', '13984138011'),
(6, '27883', 'Josimeire Silva de Oliveira', 'josime123@outlook.com', '', 0, '321041203', '3ADM3', 'Avenida São João', '100', 'Jussara', 'Itanhaém', '13997362506'),
(7, '11110', 'Lourival de Barros Silva', 'loro.123@hotmail.com.br', '', 0, '12365487', '3EDI3', 'Rua São João de Campos', '154', 'Regina Maria', 'Santos', '1334215471'),
(8, '11614', 'João Paulo Moreira Santos', 'joaojpmoreira25@gmail.com', '202cb962ac59075b964b07152d234b70', 0, '543494264', '3DS2', 'Rua Guarujá', '60', 'Agenor de Campos', 'Mongaguá', '1335077868'),
(12, '345254', 'Blaise Vigenère', 'blaise@mail.com', '899b8f91aa31ed022ad480769bed58b1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '459874', 'Painho', 'painho@mail.com', '0ca6f3f6d93012dded081e6384c1bb79', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_curso`
--

CREATE TABLE `tb_curso` (
  `cd_curso` int(10) UNSIGNED NOT NULL,
  `nm_curso` varchar(90) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_curso`
--

INSERT INTO `tb_curso` (`cd_curso`, `nm_curso`) VALUES
(1, 'Técnico em Desenvolvimento de Sistemas'),
(2, 'Administração'),
(3, 'Enfermagem'),
(4, 'Ensino Médio'),
(5, 'Edificações');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_disciplina`
--

CREATE TABLE `tb_disciplina` (
  `cd_disciplina` int(10) UNSIGNED NOT NULL,
  `nm_disciplina` varchar(85) NOT NULL,
  `id_modulo` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_disciplina`
--

INSERT INTO `tb_disciplina` (`cd_disciplina`, `nm_disciplina`, `id_modulo`) VALUES
(1, 'Banco de Dados I', 1),
(2, 'Programação de Aplicativos Mobile', 2),
(3, 'Programação Web III', 3),
(4, 'Linguagem, Trabalho e Tecnologia', 4),
(5, 'Gestão de Pessoas II', 5),
(6, 'Inglês Instrumental', 6),
(7, 'Saúde Coletiva I', 7),
(8, 'Procedimentos de Enfermagem', 8),
(9, 'Gestão em Saúde', 9),
(10, 'Qualidade de Software', 10),
(11, 'Arte', 11),
(12, 'História', 12),
(13, 'Física', 13),
(14, 'Planejamento Técnico da Construção Civil', 14),
(15, 'Banco de Dados III', 15),
(16, 'Estruturas na Construção Civil', 16);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_disciplina_professor`
--

CREATE TABLE `tb_disciplina_professor` (
  `cd_disciplina_professor` int(10) UNSIGNED NOT NULL,
  `id_disciplina` int(10) UNSIGNED DEFAULT NULL,
  `id_professor` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_disciplina_professor`
--

INSERT INTO `tb_disciplina_professor` (`cd_disciplina_professor`, `id_disciplina`, `id_professor`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 2, 8),
(4, 2, 21),
(5, 3, 19),
(6, 3, 20),
(7, 4, 15),
(8, 5, 16),
(9, 5, 6),
(10, 6, 2),
(11, 7, 12),
(12, 7, 18),
(13, 8, 14),
(14, 8, 13),
(15, 9, 17),
(16, 10, 22),
(17, 10, 17),
(18, 11, 1),
(19, 12, 9),
(20, 13, 11),
(21, 14, 7),
(22, 14, 10),
(23, 15, 3),
(24, 15, 4),
(25, 16, 14);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_funcionario`
--

CREATE TABLE `tb_funcionario` (
  `cd_funcionario` int(10) UNSIGNED NOT NULL,
  `nm_funcionario` varchar(50) NOT NULL,
  `ds_login` varchar(20) NOT NULL,
  `ds_senha` varchar(255) NOT NULL,
  `ds_email` varchar(200) NOT NULL,
  `nr_nivel_acesso` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_funcionario`
--

INSERT INTO `tb_funcionario` (`cd_funcionario`, `nm_funcionario`, `ds_login`, `ds_senha`, `ds_email`, `nr_nivel_acesso`) VALUES
(1, 'Fylipe Pablo', 'fylipe.barros', 'd2f04c2a7cdcbe8efaef996a6249e728', 'fylipe.barros@etec.sp.gov.br', '2'),
(2, 'João Paulo', 'joaozinho.paulinho', '7e5327fe3048cd16fca5de2706b12e22', 'joao.paulo@etec.sp.gov.br', '2'),
(3, 'Matheus Costa', 'matheus.costa', 'df2c88cdd93709ec78e0453ac08fe5bd', 'matheus.costa@etec.sp.gov.br', '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_matricula`
--

CREATE TABLE `tb_matricula` (
  `cd_matricula` int(10) UNSIGNED NOT NULL,
  `id_aluno` int(10) UNSIGNED DEFAULT NULL,
  `id_curso` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_matricula`
--

INSERT INTO `tb_matricula` (`cd_matricula`, `id_aluno`, `id_curso`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 5),
(4, 4, 3),
(5, 5, 4),
(6, 6, 2),
(7, 7, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_modulo`
--

CREATE TABLE `tb_modulo` (
  `cd_modulo` int(10) UNSIGNED NOT NULL,
  `nr_modulo` char(1) NOT NULL,
  `id_curso` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_modulo`
--

INSERT INTO `tb_modulo` (`cd_modulo`, `nr_modulo`, `id_curso`) VALUES
(1, '1', 1),
(2, '2', 1),
(3, '3', 1),
(4, '1', 2),
(5, '2', 2),
(6, '3', 2),
(7, '1', 3),
(8, '2', 3),
(9, '3', 3),
(10, '4', 3),
(11, '1', 4),
(12, '2', 4),
(13, '3', 4),
(14, '1', 5),
(15, '2', 5),
(16, '3', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_professor`
--

CREATE TABLE `tb_professor` (
  `cd_professor` int(10) UNSIGNED NOT NULL,
  `nm_professor` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_professor`
--

INSERT INTO `tb_professor` (`cd_professor`, `nm_professor`) VALUES
(1, 'Fylipe Pablo'),
(2, 'Brenno Henrique'),
(3, 'Josimeire Oliveira'),
(4, 'Lourival de Barros'),
(5, 'Sabrina Oliveira'),
(6, 'Felipe Matheus'),
(7, 'Diogenes Lima'),
(8, 'Jussimar Ferreira'),
(9, 'Luiz Henrique'),
(10, 'Yvo Lorenzo'),
(11, 'Matheus Costa'),
(12, 'João Paulo'),
(13, 'Juliana Soares'),
(14, 'Denise Alves'),
(15, 'Gustavo Marcos'),
(16, 'Raffael Oliveira'),
(17, 'Luiz Fernando'),
(18, 'Joelma Silva'),
(19, 'Carlos Eduardo'),
(20, 'Eduardo Michel'),
(21, 'Erick Goes'),
(22, 'Thiago Henrique');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_requerimento`
--

CREATE TABLE `tb_requerimento` (
  `cd_requerimento` int(10) UNSIGNED NOT NULL,
  `id_aluno` int(10) UNSIGNED DEFAULT NULL,
  `id_tipo_requerimento` int(10) UNSIGNED DEFAULT NULL,
  `dt_envio` date NOT NULL,
  `ds_requerimento` text NOT NULL,
  `sg_status` int(11) NOT NULL,
  `nm_tema` text,
  `nm_finalidade` text,
  `nm_publico_alvo` text,
  `ds_participante` text,
  `ds_questionario` text,
  `id_disciplina` int(10) UNSIGNED DEFAULT NULL,
  `id_tipo_oficio_carta` int(10) UNSIGNED DEFAULT NULL,
  `id_declaracao` int(10) UNSIGNED DEFAULT NULL,
  `id_funcionario` int(10) UNSIGNED DEFAULT NULL,
  `dt_recebimento` date NOT NULL,
  `ds_resposta` text,
  `dt_entrega` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_requerimento`
--

INSERT INTO `tb_requerimento` (`cd_requerimento`, `id_aluno`, `id_tipo_requerimento`, `dt_envio`, `ds_requerimento`, `sg_status`, `nm_tema`, `nm_finalidade`, `nm_publico_alvo`, `ds_participante`, `ds_questionario`, `id_disciplina`, `id_tipo_oficio_carta`, `id_declaracao`, `id_funcionario`, `dt_recebimento`, `ds_resposta`, `dt_entrega`) VALUES
(1, 4, 9, '2019-05-15', 'Utilizar a quadra', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-05-15', 'Defiro', '2019-05-16'),
(2, 8, 5, '2019-05-15', 'Declaração escolar', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2019-05-15', 'Defiro', '2019-05-16'),
(3, 8, 2, '2019-06-10', 'Transferência', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2019-06-10', 'Indefiro', '2019-06-11'),
(4, 4, 9, '2019-10-03', 'Usar auditório', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-03', NULL, '0000-00-00'),
(5, 8, 8, '2019-10-03', 'Apresentar palestra', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-03', NULL, '0000-00-00'),
(6, 8, 9, '2019-10-03', 'Jogar bola tio', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-03', NULL, '0000-00-00'),
(7, 8, 10, '2019-10-29', 'Bom trabalho da secretaria ', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-29', NULL, '0000-00-00'),
(8, 8, 9, '2019-10-29', 'Otimo trabalho da secretaria', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-29', NULL, '0000-00-00'),
(9, 8, 10, '2019-10-29', 'Bom trabalho', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-29', NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipo_carta_oficio`
--

CREATE TABLE `tb_tipo_carta_oficio` (
  `cd_tipo_oficio_carta` int(10) UNSIGNED NOT NULL,
  `nm_tipo` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_tipo_carta_oficio`
--

INSERT INTO `tb_tipo_carta_oficio` (`cd_tipo_oficio_carta`, `nm_tipo`) VALUES
(1, 'Agendamento de palestra'),
(2, 'Patrocínio'),
(3, 'Aplicação de questionário');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipo_declaracao`
--

CREATE TABLE `tb_tipo_declaracao` (
  `cd_declaracao` int(10) UNSIGNED NOT NULL,
  `nm_declaracao` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_tipo_declaracao`
--

INSERT INTO `tb_tipo_declaracao` (`cd_declaracao`, `nm_declaracao`) VALUES
(1, 'Declaração');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipo_requerimento`
--

CREATE TABLE `tb_tipo_requerimento` (
  `cd_tipo_requerimento` int(10) UNSIGNED NOT NULL,
  `nm_assunto_requerimento` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_tipo_requerimento`
--

INSERT INTO `tb_tipo_requerimento` (`cd_tipo_requerimento`, `nm_assunto_requerimento`) VALUES
(8, 'Carta de Apresentação'),
(5, 'Declarações em Geral'),
(1, 'Destrancamento de matrícula'),
(3, 'Justificativa de Faltas'),
(7, 'Oficio'),
(9, 'Outros'),
(4, 'Prova Substituta'),
(6, 'Rematrícula fora de data'),
(10, 'Sugestões/Criticas/Elogios'),
(2, 'Transferência');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tb_aluno`
--
ALTER TABLE `tb_aluno`
  ADD PRIMARY KEY (`cd_aluno`),
  ADD UNIQUE KEY `ds_email` (`ds_email`);

--
-- Índices de tabela `tb_curso`
--
ALTER TABLE `tb_curso`
  ADD PRIMARY KEY (`cd_curso`);

--
-- Índices de tabela `tb_disciplina`
--
ALTER TABLE `tb_disciplina`
  ADD PRIMARY KEY (`cd_disciplina`),
  ADD KEY `fk_discplinaModulo` (`id_modulo`);

--
-- Índices de tabela `tb_disciplina_professor`
--
ALTER TABLE `tb_disciplina_professor`
  ADD PRIMARY KEY (`cd_disciplina_professor`),
  ADD KEY `fk_discplinaDisciplina` (`id_disciplina`),
  ADD KEY `fk_discplinaProfessor` (`id_professor`);

--
-- Índices de tabela `tb_funcionario`
--
ALTER TABLE `tb_funcionario`
  ADD PRIMARY KEY (`cd_funcionario`),
  ADD UNIQUE KEY `ds_login` (`ds_login`),
  ADD UNIQUE KEY `ds_email` (`ds_email`);

--
-- Índices de tabela `tb_matricula`
--
ALTER TABLE `tb_matricula`
  ADD PRIMARY KEY (`cd_matricula`),
  ADD KEY `fk_matriculaAluno` (`id_aluno`),
  ADD KEY `fk_matriculaCurso` (`id_curso`);

--
-- Índices de tabela `tb_modulo`
--
ALTER TABLE `tb_modulo`
  ADD PRIMARY KEY (`cd_modulo`),
  ADD KEY `fk_moduloCurso` (`id_curso`);

--
-- Índices de tabela `tb_professor`
--
ALTER TABLE `tb_professor`
  ADD PRIMARY KEY (`cd_professor`);

--
-- Índices de tabela `tb_requerimento`
--
ALTER TABLE `tb_requerimento`
  ADD PRIMARY KEY (`cd_requerimento`),
  ADD KEY `fk_requerimentoAluno` (`id_aluno`),
  ADD KEY `fk_requerimentoTipo` (`id_tipo_requerimento`),
  ADD KEY `fk_requerimentoDisciplina` (`id_disciplina`),
  ADD KEY `fk_requerimentoFuncionario` (`id_funcionario`),
  ADD KEY `fk_requerimentoDeclaracao` (`id_declaracao`),
  ADD KEY `fk_requerimentoCartaOficio` (`id_tipo_oficio_carta`);

--
-- Índices de tabela `tb_tipo_carta_oficio`
--
ALTER TABLE `tb_tipo_carta_oficio`
  ADD PRIMARY KEY (`cd_tipo_oficio_carta`);

--
-- Índices de tabela `tb_tipo_declaracao`
--
ALTER TABLE `tb_tipo_declaracao`
  ADD PRIMARY KEY (`cd_declaracao`);

--
-- Índices de tabela `tb_tipo_requerimento`
--
ALTER TABLE `tb_tipo_requerimento`
  ADD PRIMARY KEY (`cd_tipo_requerimento`),
  ADD UNIQUE KEY `nm_assunto_requerimento` (`nm_assunto_requerimento`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tb_aluno`
--
ALTER TABLE `tb_aluno`
  MODIFY `cd_aluno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tb_curso`
--
ALTER TABLE `tb_curso`
  MODIFY `cd_curso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_disciplina`
--
ALTER TABLE `tb_disciplina`
  MODIFY `cd_disciplina` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tb_disciplina_professor`
--
ALTER TABLE `tb_disciplina_professor`
  MODIFY `cd_disciplina_professor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `tb_funcionario`
--
ALTER TABLE `tb_funcionario`
  MODIFY `cd_funcionario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_matricula`
--
ALTER TABLE `tb_matricula`
  MODIFY `cd_matricula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_modulo`
--
ALTER TABLE `tb_modulo`
  MODIFY `cd_modulo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tb_professor`
--
ALTER TABLE `tb_professor`
  MODIFY `cd_professor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `tb_requerimento`
--
ALTER TABLE `tb_requerimento`
  MODIFY `cd_requerimento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_tipo_carta_oficio`
--
ALTER TABLE `tb_tipo_carta_oficio`
  MODIFY `cd_tipo_oficio_carta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_tipo_declaracao`
--
ALTER TABLE `tb_tipo_declaracao`
  MODIFY `cd_declaracao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_tipo_requerimento`
--
ALTER TABLE `tb_tipo_requerimento`
  MODIFY `cd_tipo_requerimento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
