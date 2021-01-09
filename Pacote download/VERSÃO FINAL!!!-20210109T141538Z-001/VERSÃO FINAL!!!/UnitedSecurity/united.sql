-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Set-2020 às 02:38
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.9

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
(9, 'Ruth', '999999999', '9999999999', 'Ruth', 'uninove'),
(10, 'maria', '99999909999', '9999999999', 'Maria', 'uninove');

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

--
--ESTRUTURA TABELA Servico_contratado
--

CREATE TABLE servico_contratado(
id_cliente int,
id_servico int,
CONSTRAINT PK_id PRIMARY KEY (id_cliente, id_servico),
CONSTRAINT Fk_Id FOREIGN KEY  (id_cliente) REFERENCES cadastro (id),
CONSTRAINT Fk_id_prod FOREIGN KEY  (id_servico) REFERENCES produtos (cod_produto)
)


--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`cod_produto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `cod_produto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
