-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/10/2024 às 20:45
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `saudenaveia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuariosprofissionais`
--

CREATE TABLE `usuariosprofissionais` (
  `ID` int(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `area` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuariosprofissionais`
--

INSERT INTO `usuariosprofissionais` (`ID`, `nome`, `usuario`, `email`, `area`, `senha`) VALUES
(1, 'Ana Clara', 'anaclara0', 'anaclara0@medico.com.br', 'Cardiologia', '0000'),
(2, 'Bruno Medeiros', 'brunomedeiros1', 'brunomedeiros1@medico.com.br', 'Neurologia', '0001'),
(3, 'Carlos Eduardo', 'carloseduardo2', 'carloseduardo2@medico.com.br', 'Pediatria', '0002'),
(4, 'Daniela Lopes', 'danielalopes3', 'danielalopes3@medico.com.br', 'Dermatologia', '0003'),
(5, 'Eduardo Santos', 'eduardosantos4', 'eduardosantos4@medico.com.br', 'Ortopedia', '0004'),
(6, 'Fernanda Martins', 'fernandamartins5', 'fernandamartins5@medico.com.br', 'Ginecologia', '0005'),
(7, 'Gabriel Silva', 'gabrielsilva6', 'gabrielsilva6@medico.com.br', 'Urologia', '0006'),
(8, 'Helena Costa', 'helenacosta7', 'helenacosta7@medico.com.br', 'Psiquiatria', '0007'),
(9, 'Igor Almeida', 'igoralmeida8', 'igoralmeida8@medico.com.br', 'Oftalmologia', '0008'),
(10, 'Joana Mendes', 'joanamendes9', 'joanamendes9@medico.com.br', 'Endocrinologia', '0009'),
(11, 'Lara Oliveira', 'laraoliveira10', 'laraoliveira10@medico.com.br', 'Otorrinolaringologia', '0010'),
(12, 'Marcelo Teixeira', 'marceloteixeira11', 'marceloteixeira11@medico.com.br', 'Reumatologia', '0011'),
(13, 'Nathalia Souza', 'nathaliasouza12', 'nathaliasouza12@medico.com.br', 'Nefrologia', '0012'),
(14, 'Otávio Fernandes', 'otáviofernandes13', 'otáviofernandes13@medico.com.br', 'Oncologia', '0013'),
(15, 'Paula Dias', 'pauladias14', 'pauladias14@medico.com.br', 'Hematologia', '0014'),
(16, 'Rafael Costa', 'rafaelcosta15', 'rafaelcosta15@medico.com.br', 'Gastroenterologia', '0015'),
(17, 'Sabrina Lima', 'sabrinalima16', 'sabrinalima16@medico.com.br', 'Anestesiologia', '0016'),
(18, 'Thiago Moreira', 'thiagomoreira17', 'thiagomoreira17@medico.com.br', 'Infectologia', '0017'),
(19, 'Vanessa Cardoso', 'vanessacardoso18', 'vanessacardoso18@medico.com.br', 'Imunologia', '0018'),
(20, 'Wesley Monteiro', 'wesleymonteiro19', 'wesleymonteiro19@medico.com.br', 'Radiologia', '0019'),
(21, 'Yasmin Barbosa', 'yasminbarbosa20', 'yasminbarbosa20@medico.com.br', 'Cardiologia', '0020'),
(22, 'Zeca Fonseca', 'zecafonseca21', 'zecafonseca21@medico.com.br', 'Neurologia', '0021'),
(23, 'Alice Nogueira', 'alicenogueira22', 'alicenogueira22@medico.com.br', 'Pediatria', '0022'),
(24, 'Benjamin Rocha', 'benjaminrocha23', 'benjaminrocha23@medico.com.br', 'Dermatologia', '0023'),
(25, 'Cecília Torres', 'cecíliatorres24', 'cecíliatorres24@medico.com.br', 'Ortopedia', '0024'),
(26, 'Diego Nunes', 'diegonunes25', 'diegonunes25@medico.com.br', 'Ginecologia', '0025'),
(27, 'Elisa Rodrigues', 'elisarodrigues26', 'elisarodrigues26@medico.com.br', 'Urologia', '0026'),
(28, 'Fabiana Alves', 'fabianaalves27', 'fabianaalves27@medico.com.br', 'Psiquiatria', '0027'),
(29, 'Gustavo Ferreira', 'gustavoferreira28', 'gustavoferreira28@medico.com.br', 'Oftalmologia', '0028'),
(30, 'Heloisa Andrade', 'heloisaandrade29', 'heloisaandrade29@medico.com.br', 'Endocrinologia', '0029'),
(31, 'Isabela Castro', 'isabelacastro30', 'isabelacastro30@medico.com.br', 'Otorrinolaringologia', '0030'),
(32, 'Juliano Freitas', 'julianofreitas31', 'julianofreitas31@medico.com.br', 'Reumatologia', '0031'),
(33, 'Karen Oliveira', 'karenoliveira32', 'karenoliveira32@medico.com.br', 'Nefrologia', '0032'),
(34, 'Lucas Martins', 'lucasmartins33', 'lucasmartins33@medico.com.br', 'Oncologia', '0033'),
(35, 'Melissa Pereira', 'melissapereira34', 'melissapereira34@medico.com.br', 'Hematologia', '0034'),
(36, 'Nicolas Ribeiro', 'nicolasribeiro35', 'nicolasribeiro35@medico.com.br', 'Gastroenterologia', '0035'),
(37, 'Olga Pinheiro', 'olgapinheiro36', 'olgapinheiro36@medico.com.br', 'Anestesiologia', '0036'),
(38, 'Pedro Henriques', 'pedrohenriques37', 'pedrohenriques37@medico.com.br', 'Infectologia', '0037'),
(39, 'Quintino Vasconcelos', 'quintinovasconcelos38', 'quintinovasconcelos38@medico.com.br', 'Imunologia', '0038'),
(40, 'Renata Braga', 'renatabraga39', 'renatabraga39@medico.com.br', 'Radiologia', '0039'),
(41, 'Sofia Almeida', 'sofiaalmeida40', 'sofiaalmeida40@medico.com.br', 'Cardiologia', '0040'),
(42, 'Tatiana Amaral', 'tatianaamaral41', 'tatianaamaral41@medico.com.br', 'Neurologia', '0041'),
(43, 'Ulisses Gomes', 'ulissesgomes42', 'ulissesgomes42@medico.com.br', 'Pediatria', '0042'),
(44, 'Vinicius Costa', 'viniciuscosta43', 'viniciuscosta43@medico.com.br', 'Dermatologia', '0043'),
(45, 'Wilson Andrade', 'wilsonandrade44', 'wilsonandrade44@medico.com.br', 'Ortopedia', '0044'),
(46, 'Xavier Carvalho', 'xaviercarvalho45', 'xaviercarvalho45@medico.com.br', 'Ginecologia', '0045'),
(47, 'Yago Tavares', 'yagotavares46', 'yagotavares46@medico.com.br', 'Urologia', '0046'),
(48, 'Zilda Ribeiro', 'zildaribeiro47', 'zildaribeiro47@medico.com.br', 'Psiquiatria', '0047'),
(49, 'Arthur Gomes', 'arthurgomes48', 'arthurgomes48@medico.com.br', 'Oftalmologia', '0048'),
(50, 'Beatriz Souza', 'beatrizsouza49', 'beatrizsouza49@medico.com.br', 'Endocrinologia', '0049'),
(51, 'Clovis', 'Bengala', 'clovisbengala@gmail.com', 'Urologista', '1234');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuariosprofissionais`
--
ALTER TABLE `usuariosprofissionais`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuariosprofissionais`
--
ALTER TABLE `usuariosprofissionais`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
