-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Out-2020 às 03:54
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `systec`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `cargo` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`id`, `cargo`) VALUES
(1, 'Administrador'),
(2, 'Gerente'),
(3, 'Tesoureiro'),
(4, 'Funcionário');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `endereco`, `email`, `cpf`, `data`) VALUES
(1, 'hugo', '(12) 12122-2222', 'rua x', 'francisco@gmail.com', '111.111.111-11', '2020-10-17'),
(2, 'jose', '(12) 12222-2222', 'rua d', 'jose@gmail.com', '222.222.222-22', '2020-10-17'),
(3, 'joão', '(21) 33333-3333', 'rua dx', 'joao@gmail.com', '333.333.333-33', '2020-10-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(30) NOT NULL,
  `cargo` varchar(35) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cpf`, `telefone`, `endereco`, `cargo`, `data`) VALUES
(1, 'hugo rodrigues', '121.212.222-22', '(11) 11222-2222', 'rua x', 'Administrador', '2020-10-17'),
(2, 'marcos filho', '111.111.111-11', '(12) 33333-3333', 'rua d', 'Tesoureiro', '2020-10-17'),
(3, 'joao', '122.222.222-22', '(23) 23333-3333', 'rua v', 'Funcionário', '2020-10-17'),
(4, 'pedro rodrigues', '343.333.332-22', '(12) 22222-2222', 'rua z', 'Gerente', '2020-10-17'),
(5, 'kaua', '324.343.224-32', '(42) 34423-4324', 'rua d', 'Funcionário', '2020-10-18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `cargo` varchar(25) NOT NULL,
  `id_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`, `cargo`, `id_funcionario`) VALUES
(1, 'Administrador', 'admin', '123', 'Administrador', 0),
(8, 'Hugo rodrigues', 'hugo', '123', 'Administrador', 4),
(9, 'Paloma', 'paloma', '123', 'Tesoureiro', 5),
(11, 'Marcela', 'marcela', '123', 'FuncionÃ¡rio', 7),
(12, 'Hugo rodrigues', '', '123', 'Administrador', 0),
(13, 'joao', 'joao', '123', 'Funcionário', 3),
(14, 'marcos filho', 'marcos', '123', 'Tesoureiro', 2),
(15, 'kaua', 'kaua', '123', 'Funcionário', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
