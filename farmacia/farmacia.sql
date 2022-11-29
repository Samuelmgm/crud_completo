-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Nov-2022 às 19:12
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `farmacia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` int(40) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `cpf`, `email`) VALUES
(2, 'é isto', 1, '34w3546546@fghfg.fdkfmdk'),
(4, '4', 5, '6'),
(5, '1', 2, '3'),
(6, '5', 6, '7'),
(7, '1', 2, '3'),
(8, '2', 2, '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id_fornecedor` bigint(20) UNSIGNED NOT NULL,
  `nome_fornecedor` varchar(255) NOT NULL,
  `telefone_fornecedor` tinyint(1) NOT NULL,
  `situacao` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id_fornecedor`, `nome_fornecedor`, `telefone_fornecedor`, `situacao`) VALUES
(14, '1212', 127, 'Sim'),
(15, '3434', 127, 'Nao'),
(17, '1', 2, 'Nao'),
(18, '5', 7, 'Sim'),
(19, '121212', 127, 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionarios` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(90) NOT NULL,
  `cpf` int(30) NOT NULL,
  `email` varchar(90) NOT NULL,
  `funcao` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionarios`, `nome`, `cpf`, `email`, `funcao`) VALUES
(59, '1', 2, '3', 'Vendedor'),
(60, '3', 5, '6', 'Vendedor'),
(61, '1', 1, '1', 'Estagiário'),
(62, '1212', 21212, '1212', 'Entregador'),
(63, '1', 1, '1', 'Estagiário'),
(64, '1', 1, '1', 'Estagiário'),
(65, '2', 2, '2', 'Vendedor'),
(66, '1', 1, '1', 'Vendedor'),
(67, '23', 23, '2323', 'Vendedor'),
(68, '343', 3434, '34343434', 'Estagiário'),
(69, '34566', 76767, '6767', 'Entregador'),
(70, '7878', 7878, '7878', 'Estagiário'),
(71, '67676', 767676, '76767', 'Farmacêutico'),
(72, '76767', 6767, '7676', 'Vendedor'),
(73, '5656', 56565, '565656565@gmasi.com', 'Estagiário'),
(74, '6767', 6767, '6767', 'Farmacêutico'),
(75, '6767', 67, '6767', 'Estagiário'),
(76, '5454', 4545, '4545', 'Estagiário'),
(77, '7676', 676, '6767', 'Estagiário'),
(78, '6767', 6767, '6767', 'Estagiário'),
(79, '676', 6767, '6767', 'Vendedor'),
(80, '6767', 677, '677', 'Estagiário'),
(81, '767', 6767, '6767', 'Estagiário'),
(82, '767', 6767, '6767', 'Estagiário'),
(83, '5665', 6565, '5665', 'Vendedor'),
(84, '878', 7878, '7878', 'Vendedor'),
(85, '787', 7878, '7878', 'Vendedor'),
(86, '565', 656, '656', 'Vendedor'),
(89, '6767', 76767, '67676', 'Estagiário'),
(90, '6767', 677, '676', 'Estagiário'),
(91, '587878', 7878, '757656', 'Farmacêutico'),
(92, '878', 787, '7878', 'Estagiário'),
(93, '7878', 878, '7878', 'Estagiário'),
(94, '778', 7878, '7878', 'Estagiário'),
(95, '87878', 7878, '7878', 'Vendedor'),
(96, '676', 6767, '767', 'Estagiário'),
(97, '787', 8787, '7878', 'Estagiário'),
(98, '787', 87878, '7878', 'Estagiário'),
(99, '656', 565, '6656', 'Estagiário'),
(100, '6767', 6767, '7667', 'Estagiário'),
(101, '6767', 7676, '767', 'Selecione...'),
(102, '6767', 677, '6767', 'Estagiário'),
(103, '878', 8787, '78787', 'Estagiário'),
(104, '767', 676, '87', 'Estagiário'),
(105, '6767', 6767, '6767', 'Estagiário'),
(106, '788', 878, '878', 'Estagiário'),
(107, '7878', 78787, '989', 'Vendedor'),
(108, '6767', 767, '6767', 'Estagiário'),
(109, '7878', 787878, '78', 'Vendedor'),
(110, '6767', 6767, '7676', 'Estagiário'),
(111, '6767', 6767, '7676', 'Vendedor'),
(112, '6767', 676, '676', 'Estagiário'),
(113, '6767', 6776, '7878', 'Estagiário'),
(114, '787', 7878, '989', 'Estagiário'),
(115, '65656', 656, '5656', 'Entregador'),
(116, 'eu', 12345, '23@gmail.com', 'Entregador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produtos` bigint(20) UNSIGNED NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `codigo_produto` int(30) NOT NULL,
  `preco` float NOT NULL,
  `quantidade` int(30) NOT NULL,
  `tipo` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produtos`, `nome_produto`, `codigo_produto`, `preco`, `quantidade`, `tipo`) VALUES
(29, '6556', 65656, 5656, 5656, 'Produtos para Saúde'),
(30, '767', 676, 76767, 6767, 'Medicamentos'),
(31, '6767', 7677, 7676, 7677, 'Saneantes'),
(32, '1', 2, 3, 4, 'Medicamentos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id_venda` bigint(20) UNSIGNED NOT NULL,
  `nome_venda` varchar(255) NOT NULL,
  `codigo_venda` int(30) NOT NULL,
  `quantidade_venda` int(30) NOT NULL,
  `tipo_venda` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`id_venda`, `nome_venda`, `codigo_venda`, `quantidade_venda`, `tipo_venda`) VALUES
(6, '1', 2, 3, 'Produtos para Saúde'),
(7, 'rtrtrt', 454545, 54545, 'Cosméticos'),
(8, '65656', 65656, 5656, 'Saneantes');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `id_cliente` (`id_cliente`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD UNIQUE KEY `id_fornecedor` (`id_fornecedor`),
  ADD UNIQUE KEY `id_fornecedor_2` (`id_fornecedor`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionarios`),
  ADD UNIQUE KEY `id_funcionarios` (`id_funcionarios`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produtos`),
  ADD UNIQUE KEY `id_produtos` (`id_produtos`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id_venda`),
  ADD UNIQUE KEY `id_venda` (`id_venda`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id_fornecedor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionarios` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produtos` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id_venda` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
