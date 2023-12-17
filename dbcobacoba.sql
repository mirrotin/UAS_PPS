-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2023 pada 12.47
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcobacoba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `idsoal` int(11) NOT NULL,
  `level_kesulitan` varchar(255) DEFAULT NULL,
  `bab` varchar(255) NOT NULL,
  `soal_ujian` varchar(255) DEFAULT NULL,
  `jawabanA` varchar(255) DEFAULT NULL,
  `jawabanB` varchar(255) DEFAULT NULL,
  `jawabanC` varchar(255) DEFAULT NULL,
  `jawabanD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`idsoal`, `level_kesulitan`, `bab`, `soal_ujian`, `jawabanA`, `jawabanB`, `jawabanC`, `jawabanD`) VALUES
(1, 'Mudah', 'Risk Managemen', 'Risk management is one of the most important jobs for a', 'Client', 'Investor', 'Production team', 'Project manager'),
(2, 'Sedang', 'Risk Managemen', 'Which of the following risk is the failure of a purchased component to perform as expected?', 'Product risk', 'Project risk', 'Business risk', 'Programming risk'),
(3, 'Susah', 'Risk Managemen', 'Which of the following term is best defined by the statement: “There will be a change of organizational management with different priorities.”?', 'Staff turnover', 'Technology change', 'Management change', 'Product competition'),
(114, 'Sedang', 'Risk Managemen', 'Which of the following term is best defined by the statement: “The underlying technology on which the system is built is superseded by new technology.”?', 'Technology change', 'Product competition', 'Requirements change', 'None of the mentioned'),
(115, 'Sulit', 'Risk Managemen', 'What assess the risk and your plans for risk mitigation and revise these when you learn more about the risk?', 'Risk monitoring', 'Risk planning', 'Risk analysis', 'Risk identification'),
(116, 'Sedang', 'Risk Managemen', 'Which of the following risks are derived from the organizational environment where the software is being developed?', ' People risks', 'Technology risks', 'Estimation risks', ' Organizational risks'),
(117, 'Sulit', 'Risk Managemen', 'Which of the following risks are derived from the software or hardware technologies that are used to develop the system?', 'Managerial risks', 'Technology risks', 'Estimation risks', 'Organizational risks'),
(118, 'Sulit', 'Risk Managemen', 'Which of the following term is best defined by the statement: “Derive traceability information to maximize information hiding in the design.”?', 'Underestimated development time', 'Organizational restructuring', 'Requirements changes', 'None of the mentioned'),
(119, 'Mudah', 'Product Design Analysis', 'What does top down process follow?', 'The overall flow of activity during product design resolution is from higher to lower levels', 'The overall flow of activity during product design resolution is from lower to higher levels', 'All of the mentioned', 'All of the mentioned'),
(120, 'Sedang', 'Product Design Analysis', 'What are the most common scenarios for resolutions?', 'Designers frequently work bottom up or skip levels of abstraction', ' To specify some part of product design to its physical level details before others are specified', 'All of the mentioned', 'None of the mentioned'),
(121, 'Mudah', 'Product Design Analysis', 'Lower level of abstraction includes?', 'Product features', ' Functions', 'Properties', 'All of the mentioned'),
(122, 'Sulit', 'Product Design Analysis', 'Product design is mainly?', 'Top-down approach', 'Bottom-up approach', 'Top-down & Bottom-up approach', 'None of the mentioned'),
(123, 'Mudah', 'Product Design Analysis', 'The user-centered design comprises of which of these principles?', 'Stakeholder focus', 'Empirical Evaluation', 'Iteration', 'All of the mentioned'),
(124, 'Sedang', 'Product Design Analysis', 'Collection of stakeholder needs is called?', 'Requirements elicitation', 'Requirements validation', 'Needs Elicitation', 'Requirements & Needs elicitation'),
(125, 'Mudah', 'Product Design Analysis', 'Understanding Stakeholder needs are called?', 'Needs analysis', 'Needs elicitation', 'Needs identification', ' All of the mentioned'),
(126, 'Sulit', 'Product Design Analysis', 'Confirming with stakeholder that a product design satisfies their needs and desires are called?', 'Requirements validation', 'Requirements elicitation', 'Requirements analysis', 'None of the mentioned'),
(127, 'Mudah', 'Software Design Management', 'Why there is a need for Software management?', 'Software development is complex and expensive', 'It is done with few people with fixed skills and abilities', 'It is not time consuming', 'None of the mentioned'),
(128, 'Sulit', 'Software Design Management', 'Which of these is wrong in terms of definition?', 'Planing is formulating scheme for doing project', 'Organizing is directing people doing project work', 'Project is one time effort to achieve a particular goal for organization', 'Staffing is filing the positions in an organizational structure'),
(129, 'Sedang', 'Software Design Management', 'Which of these is not project development activity?', 'Planning', 'Organizing', 'Operating', 'Tracking'),
(130, 'Mudah', 'Software Design Management', 'Which of these comes under business activities?', 'Project', 'Operations', 'Planning', 'Project & Operations'),
(131, 'Sulit', 'Software Design Management', 'Which of these terms have its role in project planning?', 'Schedule', 'Milestone', 'Estimation', 'All of the mentioned'),
(132, 'Sulit', 'Software Design Management', 'What fails a project?', 'Lack of anticipation of resources to accomplish tasks', 'Problems faced by rules governing project', 'All of the mentioned', 'None of the mentioned'),
(133, 'Sedang', 'Software Design Management', 'What makes tracking activity more essential?', 'No need to follow rules', ' It schedules, estimates and follows resource allocation', 'All of the mentioned', 'None of the mentioned'),
(134, 'Mudah', 'Software Design Management', 'What are decompositions for design project?', 'Analysis : Design Problem', 'Resolution : Product specifications', 'Resolution : Detailed design', 'All of the mentioned'),
(135, 'Mudah', 'Product Planning', 'Product development is a central business activity because?', ' It is expensive and complicated', 'It determines organization’s future', 'It is risky', 'All of the mentioned'),
(136, 'Sedang', 'Product Planning', 'Which of the following statement is false?', ' A product plan is a list of approved development projects, with strat and delivery dates', 'Marketing is a process of conceiving products and planning and executing their promotion, distribution, and exchange with customers', 'An opportunity funnel is a mechanism for collecting product ideas from specific source', 'None of the mentioned'),
(137, 'Sedang', 'Product Planning', 'Which of these is not a part of product planning?', 'Identification of opportunities', 'Evaluation and prioritizing opportunities', 'Allocation of resources and time determination', 'Finalizing process'),
(138, 'Sulit', 'Product Planning', 'How does marketers study customers and products for the generation of ideas?', 'Surveys', 'Focus Groups', 'Interviews', 'All of the mentioned'),
(139, 'Mudah', 'Software Design Process', 'Software Design consists of', 'Software Product Design', 'Software Product & Engineering Design', 'Software Engineering Design', 'None of the mentioned'),
(140, 'Sulit', 'Software Design Process', 'Which of the following is true?', 'Analysis – Solving problem', 'Design – Understanding problem', 'Analysis & Design', 'None of the mentioned'),
(141, 'Sulit', 'Software Design Process', 'What is true about generic software product design process?', 'It begins with SRS', 'It ends with Product Design Problem', 'Analysis is done and end product is project mission statement', 'None of the mentioned'),
(142, 'Mudah', 'Software Design Process', 'Generic software engineering design process defined by which of these steps?', 'Generic software engineering design process first job after analysis is detailed design', 'Attention is turned later to architectural design', 'Architectural design is not followed by Detailed design', 'All of the mentioned');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idsoal`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `idsoal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
