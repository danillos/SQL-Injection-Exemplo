# Sequel Pro dump
# Version 1630
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.43)
# Database: portal
# Generation Time: 2010-04-09 14:58:13 -0300
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`id`,`title`,`content`,`status`)
VALUES
	(1,'Criminosos roubam caixa de banco e atiram em viaturas da Polícia Civil','A ousadia dos criminosos impressionou os moradores de Passo do Camaragibe. No início desta manhã, eles invadiram um banco, levaram um caixa eletrônico e, na fuga, atirou em viaturas da Polícia Civil e na sede do Batalhão da Polícia Militar. Eles ainda tentaram impedir perseguições colocando um caminhão atravessado na pista.\n\nAs informações são do delegado regional de Matriz do Camaragibe, Belmiro de Albuquerque, que está indo para a cidade fazer os levantamentos sobre o crime. Segundo as primeiras informações que já foram passadas a ele, a quadrilha, formada por oito a dez homens armados, usaram uma Hillux.\n\nEles invadiram a agência do Bradesco e levaram um caixa eletrônico. Os bandidos também atiraram em viaturas da Polícia Civil, que estavam na delegacia, para impedir a fuga. E ainda balearam a sede do Grupamento da Polícia Militar.\n\nO delegado contou que ninguém ficou ferido, mas disse ainda que a quadrilha também roubou um caminhoneiro, colocou o veículo atravessado na pista e levou as chaves, para impedir as tentativas de perseguição.\n\n\"Eu tinha ligado antes, por volta de 1h da madrugada, para o delegado da cidade, Fernando Arthur. É que roubaram uma pousada e levaram o carro, um Pólo Sedan prata, do dono da pousada, mas acredito que não tenha sido a mesma quadrilha\", revelou o delegado.\n\nNo entanto, ele já suspeita que o crime tenha sido praticado pelo mesmo grupo que agiu em caixas eletrônicos de Palmeira dos Índios e em Arapiraca.  \n',1),
	(2,'Reforma no Estádio Municipal está em fase de conclusão','As obras de ampliação e modernização do Estádio Municipal de Arapiraca estão em fase de conclusão.  Faltando trinta dias para o primeiro jogo da Agremiação Sportiva Arapiraquense no Campeonato Brasileiro da série B, o prefeito Luciano Barbosa (PMDB) visitou a obra e confirmou a realização da partida em Arapiraca.\n\nDe acordo com Barbosa, o estádio estará apto para a torcida e os desportistas possam desfrutar de uma grande praça de esportes. Ele também  agradeceu o apoio do senador Renan Calheiros (PMDB) em conseguir a verba federal para a conclusão da obra.\n\n“Quero agradecer ao senador por tudo que tem feito por Arapiraca, particularmente em transformar o estádio. Estamos continuando a obra e não tem chuva que faça parar. No dia 07 de maio, o ASA vai jogar aqui abrindo o Campeonato Brasileiro da série B, contra a Ponte Preta”, afirmou.\n\nO secretário de Iluminação e Limpeza Pública, Josenildo Souza, também falou sobre o andamento da obra. “A importância desta obra é muito grande pela grandeza do que representa o ASA a nível nacional. Em uma ação integrada, todos os secretários estão envolvidos, no intuito de fazer o melhor para essa disputa que é tão importante para o futebol de Alagoas”, completou.',1);

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`login`,`password`)
VALUES
	(1,NULL,'joao','a1DixMyp'),
	(2,NULL,'carlos','$adR%ˆG');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
