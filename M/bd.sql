-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 20 Novembre 2018 à 20:36
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pjs3`
--
DROP TABLE IF EXISTS `article`;
DROP TABLE IF EXISTS `image`;
DROP TABLE IF EXISTS `suivre`;
DROP TABLE IF EXISTS `utilisateur`;
-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `idImage` int(11) NOT NULL,
  `lien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `idArticle` int(11) NOT NULL,
  `date` date NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` longtext NOT NULL,
  `idAuteur` int(11) NOT NULL,
  `idImage` int(11) REFERENCES image(`idImage`)  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Structure de la table `suivre`
--

CREATE TABLE `suivre` (
  `idUser` int(11) NOT NULL,
  `idSuivi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUser` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nomUser` varchar(255) NOT NULL,
  `prenomUser` varchar(255) NOT NULL,
  `isAdh` tinyint(1) NOT NULL,
  `statutUser` varchar(255) NOT NULL,
  `roleUser` varchar(1) NOT NULL,
  `mailUser` varchar(255) NOT NULL,
  `passUser` varchar(255) NOT NULL,
  `idImage` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`nomUser`, `prenomUser`, `isAdh`, `statutUser`, `roleUser`, `mailUser`, `passUser`) VALUES
("Bedos","Véronique",1,"Secrétaire du département informatique","M","secretariatsinfo@parisdescartes.fr","azerty"),
("Guisset","Gabriel",1,"Etudiant","U","guisset.gab@gmail.com","qwerty"),
("Feliciano","Coline",1,"Etudiant","U","colinef93@gmail.com","azerty"),
("PJS3","SiteWeb",0,"Etudiant","U","pjs3siteweb@gmail.com","azerty"),
("Bilot","Tristan",1,"Etudiant","U","fermetristan@gmail.com","azerty");

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idArticle`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`idImage`),
  ADD UNIQUE `lien` (`lien`);

--
-- Index pour la table `suivre`
--
ALTER TABLE `suivre`
  ADD PRIMARY KEY (`idUser`,`idSuivi`),
  ADD CONSTRAINT FK_Suivre_User FOREIGN KEY (`idUser`)  REFERENCES `utilisateur`(`idUser`) ON DELETE CASCADE,
  ADD CONSTRAINT FK_Suivi_User FOREIGN KEY (`idSuivi`)  REFERENCES `utilisateur`(`idUser`) ON DELETE CASCADE;
--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `FK_Image_User` FOREIGN KEY (`idImage`)  REFERENCES `image`(`idImage`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;