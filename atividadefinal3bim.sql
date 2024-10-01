-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/09/2024 às 21:53
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `atividadefinal3bim`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acao_executada`
--

CREATE TABLE `acao_executada` (
  `id_acaoexecutada` int(30) NOT NULL,
  `nome_responsavel` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `acao_executada`
--

INSERT INTO `acao_executada` (`id_acaoexecutada`, `nome_responsavel`, `descricao`) VALUES
(1, 'Carlos Almeida', 'Realizou manutenção na rede de esgoto entupida'),
(2, 'Fernanda Lopes', 'Consertou vazamento de água potável em via pública'),
(3, 'João Martins', 'Coordenou a limpeza de áreas com acúmulo de lixo'),
(4, 'Mariana Silva', 'Supervisionou a coleta de resíduos sólidos em bairros afetados'),
(5, 'Paulo Santos', 'Inspecionou áreas com falta de água e corrigiu abastecimento'),
(6, 'Roberta Costa', 'Verificou e solucionou o problema de água contaminada'),
(7, 'Gabriel Souza', 'Desbloqueou sistema de drenagem urbana'),
(8, 'Luiz Henrique', 'Coordenou a limpeza de rios poluídos por resíduos sólidos'),
(9, 'Patrícia Nunes', 'Reparou rede de esgoto rompida'),
(10, 'Pedro Oliveira', 'Reestabeleceu o sistema de drenagem em áreas de alagamento'),
(11, 'Juliana Mendes', 'Investigou denúncia de descarte irregular de lixo e tomou providências'),
(12, 'Carlos Barbosa', 'Monitorou o escoamento da água em área urbana com enchentes'),
(13, 'Luciana Rocha', 'Liderou ação de limpeza e coleta de lixo em locais públicos'),
(14, 'Rafael Silva', 'Consertou falha na infraestrutura de saneamento em área rural'),
(15, 'Ana Paula Santos', 'Investigou e solucionou problema de mau cheiro causado por esgoto'),
(16, 'Felipe Moreira', 'Supervisionou a instalação de nova tubulação de esgoto'),
(17, 'Marcelo Braga', 'Garantiu o fornecimento de água potável em áreas sem acesso');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentario`
--

CREATE TABLE `comentario` (
  `id_comentario` int(30) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `data_comentario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `comentario`, `data_comentario`) VALUES
(1, 'O vazamento foi resolvido rapidamente, excelente serviço!', '2024-09-25'),
(2, 'A coleta de lixo não foi feita conforme o combinado.', '2024-09-26'),
(3, 'A água ainda está vindo com baixa pressão, precisamos de uma solução definitiva.', '2024-09-27'),
(4, 'A equipe de manutenção foi muito eficiente, o problema de esgoto foi resolvido.', '2024-09-28'),
(5, 'Falta de comunicação sobre a interrupção no abastecimento de água.', '2024-09-29'),
(6, 'O problema de acúmulo de lixo foi resolvido, mas já voltou a acontecer.', '2024-09-30'),
(7, 'Muito satisfeito com a rapidez no conserto do esgoto.', '2024-10-01'),
(8, 'A situação do sistema de drenagem melhorou bastante após a última intervenção.', '2024-10-02'),
(9, 'Ainda há lixo acumulado nas áreas próximas ao rio.', '2024-10-03'),
(10, 'A equipe que realizou o reparo foi muito atenciosa.', '2024-10-04'),
(11, 'O problema de falta de água foi solucionado, mas esperamos mais estabilidade.', '2024-10-05'),
(12, 'Boa comunicação e trabalho rápido para resolver o entupimento.', '2024-10-06'),
(13, 'A limpeza das ruas melhorou muito depois da ação.', '2024-10-07'),
(14, 'O cheiro de esgoto diminuiu, mas ainda persiste em algumas áreas.', '2024-10-08'),
(15, 'A solução para o vazamento foi bem feita, mas demorou para ser iniciada.', '2024-10-09'),
(16, 'A drenagem urbana melhorou, mas ainda temos alguns pontos críticos.', '2024-10-10'),
(17, 'Excelente trabalho no conserto da rede de esgoto, agora está funcionando perfeitamente.', '2024-10-11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `denuncias`
--

CREATE TABLE `denuncias` (
  `id_denuncia` int(30) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `data_hora` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `denuncias`
--

INSERT INTO `denuncias` (`id_denuncia`, `endereco`, `descricao`, `data_hora`) VALUES
(1, 'Rua das Flores, 123, São Paulo, SP', 'Vazamento de esgoto a céu aberto', '2024-09-03'),
(2, 'Avenida Brasil, 456, Rio de Janeiro, RJ', 'Descarte irregular de resíduos sólidos', '2024-09-26'),
(3, 'Rua do Comércio, 789, Belo Horizonte, MG', 'Falta de coleta de lixo', '2024-09-27'),
(4, 'Praça Central, 101, Porto Alegre, RS', 'Falta de água potável', '2024-09-28'),
(5, 'Rua dos Pinheiros, 202, Curitiba, PR', 'Problemas com rede de esgoto entupida', '2024-09-29'),
(6, 'Avenida Paulista, 303, São Paulo, SP', 'Vazamento de água em via pública', '2024-09-30'),
(7, 'Rua das Palmeiras, 404, Salvador, BA', 'Sistemas de drenagem urbana ineficiente', '2024-10-01'),
(8, 'Rua Sete de Setembro, 505, Recife, PE', 'Água contaminada sendo distribuída', '2024-10-02'),
(9, 'Rua da Glória, 606, Brasília, DF\r\n ', 'Acúmulo de lixo em locais não autorizados', '2024-10-03'),
(10, 'Rua das Laranjeiras, 707, Manaus, AM', 'Falta de saneamento em área rural', '2024-10-04'),
(11, 'Rua do Sol, 808, Fortaleza, CE', 'Rede de esgoto rompida', '2024-10-05'),
(12, 'Rua do Porto, 909, Florianópolis, SC ', ' Falta de drenagem em áreas de enchente ', '2024-10-06'),
(13, 'Avenida Independência, 1010, Vitória, ES', 'Lixo acumulado em áreas públicas', '2024-10-07'),
(14, 'Rua das Hortênsias, 1111, Goiânia, GO', 'Falta de saneamento em bairros periféricos', '2024-10-08'),
(15, 'Rua da Paz, 1212, Natal, RN', 'Entupimento de rede de esgoto', '2024-10-09'),
(16, 'Avenida dos Bandeirantes, 1313, Maceió, AL', 'Problema de abastecimento de água', '2024-10-10'),
(17, 'Rua das Nações, 1414, João Pessoa, PB', 'Falta de infraestrutura de saneamento', '2024-10-11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa_responsavel`
--

CREATE TABLE `empresa_responsavel` (
  `id_empresa` int(30) NOT NULL,
  `nome_empresa` varchar(255) NOT NULL,
  `endeco_empresa` varchar(255) NOT NULL,
  `email_empresa` varchar(255) NOT NULL,
  `telefone_empresa` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `empresa_responsavel`
--

INSERT INTO `empresa_responsavel` (`id_empresa`, `nome_empresa`, `endeco_empresa`, `email_empresa`, `telefone_empresa`) VALUES
(1, 'Água Viva Saneamento', 'Rua das Palmeiras, 123, São Paulo, SP', 'contato@aguaviva.com', 912345678),
(2, 'Ecopura Soluções', 'Avenida Brasil, 456, Rio de Janeiro, RJ', 'atendimento@ecopura.com', 998765432),
(3, 'H2O Serviços', 'Rua do Comércio, 789, Belo Horizonte, MG', 'suporte@h2oservicos.com', 987654321),
(4, 'BioSan Engenharia', 'Praça Central, 101, Porto Alegre, RS', 'info@biosan.com', 923456789),
(5, 'LimpaCidade Ambiental', 'Rua dos Pinheiros, 202, Curitiba, PR', 'servicos@limpacidade.com', 987123456),
(6, 'PuraÁgua Gestão', 'Avenida Paulista, 303, São Paulo, SP', 'contato@puraagua.com', 934567890),
(7, 'Sanear Brasil', 'Rua das Palmeiras, 404, Salvador, BA', 'atendimento@sanearbrasil.com', 988776655),
(8, 'Águas Limpas', 'Rua Sete de Setembro, 505, Recife, PE', 'suporte@aguaslimpas.com', 998887766),
(9, 'Sane Ambiental', 'Rua da Glória, 606, Brasília, DF', 'info@saneambiental.com', 987651234),
(10, 'EcoServ Engenharia', 'Rua das Laranjeiras, 707, Manaus, AM', 'servicos@ecoserv.com', 911112222),
(11, 'Planeta Verde Saneamento', 'Rua do Sol, 808, Fortaleza, CE', 'contato@planetaverde.com', 933334444),
(12, 'HidroTech Soluções', 'Rua do Porto, 909, Florianópolis, SC', 'info@hidrotech.com', 944445555),
(13, 'LimpAmb Soluções', 'Avenida Independência, 1010, Vitória, ES', 'suporte@limpamb.com', 955556666),
(14, 'Águas Claras Serviços', 'Rua das Hortênsias, 1111, Goiânia, GO', 'atendimento@aguasclaras.com', 966667777),
(15, 'BioÁgua Tecnologia', 'Rua da Paz, 1212, Natal, RN', 'info@bioagua.com', 977778888),
(16, 'Ecosystem Engenharia', 'Avenida dos Bandeirantes, 1313, Maceió, AL', 'servicos@ecosystem.com', 988889999),
(17, 'SoluSaneamento', 'Rua das Nações, 1414, João Pessoa, PB', 'contato@solusaneamento.com', 999991111);

-- --------------------------------------------------------

--
-- Estrutura para tabela `evidencia`
--

CREATE TABLE `evidencia` (
  `id_evidencia` int(30) NOT NULL,
  `tipo_evidencia` varchar(255) NOT NULL,
  `local_evidencia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `evidencia`
--

INSERT INTO `evidencia` (`id_evidencia`, `tipo_evidencia`, `local_evidencia`) VALUES
(1, 'Foto', 'Rua das Flores, 123, São Paulo, SP'),
(2, 'Vídeo', 'Avenida Brasil, 456, Rio de Janeiro, RJ'),
(3, 'Relatório técnico', 'Rua do Comércio, 789, Belo Horizonte, MG'),
(4, 'Foto', 'Praça Central, 101, Porto Alegre, RS'),
(5, 'Áudio', 'Rua dos Pinheiros, 202, Curitiba, PR'),
(6, 'Vídeo', 'Avenida Paulista, 303, São Paulo, SP'),
(7, 'Relatório técnico', 'Rua das Palmeiras, 404, Salvador, BA'),
(8, 'Foto', 'Rua Sete de Setembro, 505, Recife, PE'),
(9, 'Vídeo', 'Rua da Glória, 606, Brasília, DF'),
(10, 'Áudio', 'Rua das Laranjeiras, 707, Manaus, AM'),
(11, 'Relatório técnico', 'Rua do Sol, 808, Fortaleza, CE'),
(12, 'Foto', 'Rua do Porto, 909, Florianópolis, SC'),
(13, 'Vídeo', 'Avenida Independência, 1010, Vitória, ES'),
(14, 'Áudio', 'Rua das Hortênsias, 1111, Goiânia, GO'),
(15, 'Relatório técnico', 'Rua da Paz, 1212, Natal, RN'),
(16, 'Foto', 'Avenida dos Bandeirantes, 1313, Maceió, AL'),
(17, 'Vídeo', 'Rua das Nações, 1414, João Pessoa, PB');

-- --------------------------------------------------------

--
-- Estrutura para tabela `feedbak`
--

CREATE TABLE `feedbak` (
  `id_feedbak` int(30) NOT NULL,
  `feedbak` varchar(255) NOT NULL,
  `data_feedbak` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `feedbak`
--

INSERT INTO `feedbak` (`id_feedbak`, `feedbak`, `data_feedbak`) VALUES
(1, 'Serviço de coleta de lixo excelente!', '2024-09-25'),
(2, 'O problema de água potável foi resolvido rapidamente.', '2024-09-26'),
(3, 'A comunicação sobre o serviço poderia melhorar.', '2024-09-27'),
(4, 'A equipe foi muito profissional e eficiente.', '2024-09-28'),
(5, 'Estou satisfeito com a resolução do esgoto entupido.', '2024-09-29'),
(6, 'A falta de água continua em algumas áreas.', '2024-09-30'),
(7, 'Os funcionários foram muito educados durante o atendimento.', '2024-10-01'),
(8, 'Preciso de mais informações sobre o abastecimento de água.', '2024-10-02'),
(9, 'A limpeza da praça central foi bem feita, mas poderia ser mais frequente.', '2024-10-03'),
(10, 'O esgoto ainda apresenta problemas em algumas ruas.', '2024-10-04'),
(11, 'Muito obrigado pelo rápido atendimento ao problema de drenagem!', '2024-10-05'),
(12, 'A melhoria no sistema de saneamento foi notável.', '2024-10-06'),
(13, 'A falta de lixo na rua é perceptível, ótimo trabalho!', '2024-10-07'),
(14, 'Gostaria de sugestões sobre como evitar o acúmulo de lixo.', '2024-10-08'),
(15, 'A situação da água potável tem melhorado bastante.', '2024-10-09'),
(16, 'Estou preocupado com o mau cheiro do esgoto.', '2024-10-10'),
(17, 'O trabalho realizado é digno de reconhecimento!', '2024-10-11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `locazacao`
--

CREATE TABLE `locazacao` (
  `id_localizacao` int(30) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `locazacao`
--

INSERT INTO `locazacao` (`id_localizacao`, `endereco`, `cidade`, `estado`) VALUES
(1, 'Rua das Flores, 123', 'São Paulo', 'SP'),
(2, 'Avenida Brasil, 456', 'Rio de Janeiro', 'RJ'),
(3, 'Rua do Comércio, 789', 'Belo Horizonte', 'MG'),
(4, 'Praça Central, 101', 'Porto Alegre', 'RS'),
(5, 'Rua dos Pinheiros, 202', 'Curitiba', 'PR'),
(6, 'Avenida Paulista, 303', 'São Paulo', 'SP'),
(7, 'Rua das Palmeiras, 404', 'Salvador', 'BA'),
(8, 'Rua Sete de Setembro, 505', 'Recife', 'PE'),
(9, 'Rua da Glória, 606', 'Brasília', 'DF'),
(10, 'Rua das Laranjeiras, 707', 'Manaus', 'AM'),
(11, 'Rua do Sol, 808', 'Fortaleza', 'CE'),
(12, 'Rua do Porto, 909', 'Florianópolis', 'SC'),
(13, 'Avenida Independência, 1010', 'Vitória', 'ES'),
(14, 'Rua das Hortênsias, 1111', 'Goiânia', 'GO'),
(15, 'Rua da Paz, 1212', 'Natal', 'RN'),
(16, 'Avenida dos Bandeirantes, 1313', 'Maceió', 'AL'),
(17, 'Rua das Nações, 1414', 'João Pessoa', 'PB');

-- --------------------------------------------------------

--
-- Estrutura para tabela `resolucao`
--

CREATE TABLE `resolucao` (
  `id_resolucao` int(30) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `data_resolucao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `resolucao`
--

INSERT INTO `resolucao` (`id_resolucao`, `descricao`, `data_resolucao`) VALUES
(1, 'Problema de esgoto entupido resolvido.', '2024-09-25'),
(2, 'Vazamento de água potável consertado.', '2024-09-26'),
(3, 'Coleta de lixo realizada conforme agendado.', '2024-09-27'),
(4, 'Abastecimento de água normalizado.', '2024-09-28'),
(5, 'Rede de drenagem limpa e funcional.', '2024-09-29'),
(6, 'Descarte irregular de lixo retirado do local.', '2024-09-30'),
(7, 'Melhoria na qualidade da água potável.', '2024-10-01'),
(8, 'Problema de poluição sonora em área pública solucionado.', '2024-10-02'),
(9, 'Desentupimento da rede de esgoto realizado com sucesso.', '2024-10-03'),
(10, 'Sistema de drenagem reformado e eficiente.', '2024-10-04'),
(11, 'Monitoramento do abastecimento de água concluído.', '2024-10-05'),
(12, 'Construção de novos pontos de coleta de lixo iniciada.', '2024-10-06'),
(13, 'Ação de conscientização sobre saneamento realizada.', '2024-10-07'),
(14, 'Estudo sobre a situação da água em áreas urbanas finalizado.', '2024-10-08'),
(15, 'Serviços de limpeza em rios realizados.', '2024-10-09'),
(16, 'Aumento na frequência de coleta de resíduos sólidos implementado.', '2024-10-10'),
(17, 'Relatório de melhorias no sistema de saneamento publicado.', '2024-10-11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `status_denuncia`
--

CREATE TABLE `status_denuncia` (
  `id_status` int(30) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `status_denuncia`
--

INSERT INTO `status_denuncia` (`id_status`, `status`) VALUES
(1, 'Recebida'),
(2, 'Em análise'),
(3, 'Aguardando documentação'),
(4, 'Em andamento'),
(5, 'Concluída'),
(6, 'Encaminhada para outro setor'),
(7, 'Aprovada'),
(8, 'Rejeitada'),
(9, 'Em verificação'),
(10, 'Aguardando resposta do denunciante'),
(11, 'Resolvida'),
(12, 'Em monitoramento'),
(13, 'Prioritária'),
(14, 'Baixada'),
(15, 'Em investigação'),
(16, 'Cancelada'),
(17, 'Suspensa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tiposproblemas`
--

CREATE TABLE `tiposproblemas` (
  `id_tipo_problema` int(30) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tiposproblemas`
--

INSERT INTO `tiposproblemas` (`id_tipo_problema`, `descricao`) VALUES
(1, 'Vazamento de esgoto\''),
(2, 'Entupimento de rede de esgoto'),
(3, 'Falta de água potável'),
(4, 'Infiltração de esgoto em áreas públicas'),
(5, 'Água contaminada'),
(6, 'Descarte irregular de lixo'),
(7, 'Acúmulo de lixo em áreas públicas'),
(8, 'Falta de coleta de resíduos sólidos'),
(9, 'Problemas no sistema de drenagem'),
(10, 'Alagamentos devido à falta de saneamento'),
(11, 'Excesso de resíduos em rios e córregos'),
(12, 'Falta de rede de esgoto em áreas urbanas'),
(13, 'Água com baixa pressão ou sem fornecimento'),
(14, 'Esgoto retornando para as casas'),
(15, 'Vazamento de água potável'),
(16, 'Falta de infraestrutura de drenagem urbana'),
(17, 'Mau cheiro causado por problemas de esgoto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_acao`
--

CREATE TABLE `tipo_acao` (
  `id_tipoacao` int(30) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipo_acao`
--

INSERT INTO `tipo_acao` (`id_tipoacao`, `descricao`) VALUES
(1, 'Reparo de vazamento'),
(2, 'Desentupimento de esgoto'),
(3, 'Coleta de lixo'),
(4, 'Limpeza de áreas públicas'),
(5, 'Melhoria na qualidade da água'),
(6, 'Construção de novos pontos de coleta'),
(7, 'Instalação de rede de drenagem'),
(8, 'Inspeção de sistemas de esgoto'),
(9, 'Conscientização sobre saneamento'),
(10, 'Monitoramento de abastecimento de água'),
(11, 'Fiscalização de descarte de resíduos'),
(12, 'Elaboração de relatórios técnicos'),
(13, 'Ações de educação ambiental'),
(14, 'Reparação de infraestrutura de saneamento'),
(15, 'Capacitação de equipes de trabalho'),
(16, 'Análise de qualidade da água'),
(17, 'Apoio a comunidades em risco');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(30) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `email_usuario` varchar(255) NOT NULL,
  `telefone_usuario` int(30) NOT NULL,
  `id_denuncia` int(30) NOT NULL,
  `id_tipo_problema` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `email_usuario`, `telefone_usuario`, `id_denuncia`, `id_tipo_problema`) VALUES
(1, 'João Silva', 'Joao.silva@email.com', 912345678, 1, 1),
(2, 'Maria Oliveira', 'maria.oliveira@email.com', 998765432, 2, 2),
(3, 'Carlos Souza', 'carlos.souza@email.com', 987654321, 3, 3),
(4, 'Ana Costa', 'ana.costa@email.com', 923456789, 4, 4),
(5, 'Pedro Lima', 'pedro.lima@email.com', 987123456, 5, 5),
(6, 'Fernanda Almeida\r\n', 'fernanda.almeida@email.com', 934567890, 6, 6),
(7, 'Bruno Ribeiro', 'bruno.ribeiro@email.com', 988776655, 7, 7),
(8, 'Larissa Martins', 'larissa.martins@email.com', 998887766, 8, 8),
(9, 'Paulo Fernandes\r\n', 'paulo.fernandes@email.com', 987651234, 9, 9),
(10, 'Juliana Mendes', 'juliana.mendes@email.com', 911112222, 10, 10),
(11, 'Gabriel Ferreira', 'gabriel.ferreira@email.com', 933334444, 11, 11),
(12, 'Ricardo Pereira', 'ricardo.pereira@email.com', 944445555, 12, 12),
(13, 'Camila Rocha', 'camila.rocha@email.com', 955556666, 13, 13),
(14, 'Rodrigo Barros', 'rodrigo.barros@email.com', 966667777, 14, 14),
(15, 'Sabrina Azevedo', 'sabrina.azevedo@email.com', 977778888, 15, 15),
(16, 'Leonardo Borges', 'leonardo.borges@email.com', 988889999, 16, 16),
(17, 'Isabela Farias', 'isabela.farias@email.com', 999991111, 17, 17);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acao_executada`
--
ALTER TABLE `acao_executada`
  ADD PRIMARY KEY (`id_acaoexecutada`);

--
-- Índices de tabela `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Índices de tabela `denuncias`
--
ALTER TABLE `denuncias`
  ADD PRIMARY KEY (`id_denuncia`);

--
-- Índices de tabela `empresa_responsavel`
--
ALTER TABLE `empresa_responsavel`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Índices de tabela `evidencia`
--
ALTER TABLE `evidencia`
  ADD PRIMARY KEY (`id_evidencia`);

--
-- Índices de tabela `feedbak`
--
ALTER TABLE `feedbak`
  ADD PRIMARY KEY (`id_feedbak`);

--
-- Índices de tabela `locazacao`
--
ALTER TABLE `locazacao`
  ADD PRIMARY KEY (`id_localizacao`);

--
-- Índices de tabela `resolucao`
--
ALTER TABLE `resolucao`
  ADD PRIMARY KEY (`id_resolucao`);

--
-- Índices de tabela `status_denuncia`
--
ALTER TABLE `status_denuncia`
  ADD PRIMARY KEY (`id_status`);

--
-- Índices de tabela `tiposproblemas`
--
ALTER TABLE `tiposproblemas`
  ADD PRIMARY KEY (`id_tipo_problema`);

--
-- Índices de tabela `tipo_acao`
--
ALTER TABLE `tipo_acao`
  ADD PRIMARY KEY (`id_tipoacao`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_denuncia` (`id_denuncia`),
  ADD KEY `id_tipo_problema` (`id_tipo_problema`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acao_executada`
--
ALTER TABLE `acao_executada`
  MODIFY `id_acaoexecutada` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_comentario` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `denuncias`
--
ALTER TABLE `denuncias`
  MODIFY `id_denuncia` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `empresa_responsavel`
--
ALTER TABLE `empresa_responsavel`
  MODIFY `id_empresa` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `evidencia`
--
ALTER TABLE `evidencia`
  MODIFY `id_evidencia` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `feedbak`
--
ALTER TABLE `feedbak`
  MODIFY `id_feedbak` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `locazacao`
--
ALTER TABLE `locazacao`
  MODIFY `id_localizacao` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `resolucao`
--
ALTER TABLE `resolucao`
  MODIFY `id_resolucao` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `status_denuncia`
--
ALTER TABLE `status_denuncia`
  MODIFY `id_status` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tiposproblemas`
--
ALTER TABLE `tiposproblemas`
  MODIFY `id_tipo_problema` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tipo_acao`
--
ALTER TABLE `tipo_acao`
  MODIFY `id_tipoacao` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_denuncia`) REFERENCES `denuncias` (`id_denuncia`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_tipo_problema`) REFERENCES `tiposproblemas` (`id_tipo_problema`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
