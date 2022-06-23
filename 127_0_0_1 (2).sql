-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Jun-2022 às 23:53
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `celke`
--
CREATE DATABASE IF NOT EXISTS `celke` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `celke`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(220) NOT NULL,
  `description` text NOT NULL,
  `informacoes_produto` text NOT NULL,
  `price` double NOT NULL,
  `created` datetime NOT NULL,
  `image` varchar(220) DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `informacoes_produto`, `price`, `created`, `image`, `modified`) VALUES
(1, 'Curso De PHP', '', 'O curso destina-se a todos que desejam desenvolver novos hábitos e conceitos de vida focados em soluções.', 247, '2022-06-07 20:30:13', 'curso-de-php-developer.jpg', NULL),
(2, 'Curso de PHP Orientado a Objeto', '', 'Esse curso é destinado à pais, tios, avós ou tutores que almejam iniciar o processo de alfabetização com crianças a partir de 6 anos de idade. ', 194.47, '2022-06-07 20:30:13', 'curso-de-php-orientado-a-objetos.jpg', NULL),
(3, 'Curso de PHP, Mysqli e Bootstrap', '', 'Aprenda PHP Mysqli e Bootstrap com dois especialistas a programar do básico ao avançado em um projeto completo.', 159.96, '2022-06-08 01:47:26', 'curso-de-php-mysqli-e-bootstrap.jpg', '2022-06-07 20:47:26'),
(4, 'Curso de HTML, CSS e Bootstrap', '', 'Aprenda a fazer sites bonitos e interativo com as melhores linguagens e frameworks: HTML5, CSS3 e Bootstrap', 59.5, '2022-06-08 01:47:26', 'curso-de-html-css-bootstrap.jpg', '2022-06-07 20:47:26'),
(5, 'Curso de Programação Para Iniciante', '', 'Aprenda os Principais Pontos para Começar a Programar Computadores, Exemplos Reais e Aplicados em Diversas Linguagens', 248.3, '2022-06-08 15:12:33', 'programaçãoiniciante.png', '2022-06-08 15:12:33'),
(6, 'Programação em Python', '', 'Aprenda Python Do Básico ao Avançado + Projetos Inclusos', 345.6, '2022-06-08 15:12:33', 'python.jpg', '2022-06-08 15:12:33');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
