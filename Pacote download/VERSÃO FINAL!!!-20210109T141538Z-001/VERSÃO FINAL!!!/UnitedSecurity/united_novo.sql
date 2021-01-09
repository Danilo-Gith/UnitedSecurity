-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Nov-2020 às 21:11
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `united`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` decimal(11,0) DEFAULT NULL,
  `telefone` decimal(11,0) DEFAULT NULL,
  `apelido` varchar(30) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `nome`, `cpf`, `telefone`, `apelido`, `senha`) VALUES
(9, 'Ruth', '999999999', '1133332222', 'Ruth', 'alan'),
(10, 'maria', '99999909999', '1133332222', 'Maria', 'alan'),
(11, 'alan nonato 02', '99999999999', '1133332222', 'alan02', 'alan'),
(12, 'nonato', '12345678911', '2211113333', 'nonato', 'alan'),
(13, 'alan', '12345612315', '1133332222', 'alan2', 'alan');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id_contato` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `telefone` int(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `mensagem` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id_contato`, `nome`, `telefone`, `email`, `mensagem`) VALUES
(1, 'alan', 1122225555, 'alan@united.com', 'inclusão bem sucedida'),
(2, 'alan2', 11112222, 'alan@united.com.br', 'inclusão bem sucedida!');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `cod_produto` int(10) NOT NULL,
  `nome_produto` varchar(30) NOT NULL,
  `descricao_produto` varchar(500) NOT NULL,
  `imagem` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`cod_produto`, `nome_produto`, `descricao_produto`, `imagem`) VALUES
(1, 'Biometria', 'A biometria te ajudará a controlar o acesso à lugares de sua escolha, identificar pessoas e até mesmo impedir que pessoas não autorizadas acessem dados sigilosos por meios digitais.\r\nPara orçamentos, entre em contato conosco.', 'biometria.jpeg'),
(2, 'Análise de riscos', 'Na United fazemos uma análise de riscos completamente personalizada que melhor se encaixe na sua empresa.', 'analise.png'),
(3, 'Workshop', 'Você poderá solicitar um workshop totalmente personalizado para sua equipe de T.I.', 'workshop.jpg'),
(4, 'Serviços de segurança', 'Aqui te auxiliaremos com a segurança de sua empresa, com implementações de procedimentos e sereviços de segurança', 'servicoseguranca.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico_contratado`
--

CREATE TABLE `servico_contratado` (
  `id_cliente` int(11) NOT NULL,
  `id_servico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servico_contratado`
--

INSERT INTO `servico_contratado` (`id_cliente`, `id_servico`) VALUES
(12, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id_contato`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`cod_produto`);

--
-- Índices para tabela `servico_contratado`
--
ALTER TABLE `servico_contratado`
  ADD PRIMARY KEY (`id_cliente`,`id_servico`),
  ADD KEY `Fk_id_prod` (`id_servico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `cod_produto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `servico_contratado`
--
ALTER TABLE `servico_contratado`
  ADD CONSTRAINT `Fk_Id` FOREIGN KEY (`id_cliente`) REFERENCES `cadastro` (`id`),
  ADD CONSTRAINT `Fk_id_prod` FOREIGN KEY (`id_servico`) REFERENCES `produtos` (`cod_produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
