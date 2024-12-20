-- MySQL dump 10.13  Distrib 8.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: skysfalling_website
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `skysfalling_website`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sky-web` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `sky-web`;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT 'default',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('02bf1385-9b65-4f83-97f7-7a3c04f7d746','ultra@dummy.com','$2b$10$vBDoLXexHOGxqxxAyLdpIuWPRga.lbc7IEA9bWgTqk0cG83g9Tm8.','ultra','2024-12-08 08:52:29','2024-12-08 08:52:29'),('0f086fa2-db17-488c-9486-fba3d7b8405f','rocko@dummy.com','$2b$10$N2FH2S/AuLuE4vpP6ZXmger3Htsphx4yhfdpVl4C.LlyUGX3i2Pvm','rocko','2024-12-08 08:52:29','2024-12-08 08:52:29'),('1478a1ea-a0bc-4830-9323-10da5a891d08','penguin@dummy.com','$2b$10$qmkA7Yzgu9YzB1cdRi05puBt7cjw2E/et9bZt10ktXgICyRJqSdz.','penguin','2024-12-08 08:52:29','2024-12-08 08:52:29'),('1bf8a4a2-366c-46c4-938e-d9e3c2f1876c','osiris@dummy.com','$2b$10$AltEFFO4B1VRgun2kemcweBaFAgH9hM9PXrJs2plSTdLVFQ/XdwyG','osiris','2024-12-08 08:52:29','2024-12-08 08:52:29'),('24539da4-c55e-446b-8eba-36f94832d1c5','violet@dummy.com','$2b$10$A5tChScFYD30sl5zk8mjZu6SXuCo37.7CnOTxDVACJptcLCLVgdDW','violet','2024-12-08 08:52:29','2024-12-08 08:52:29'),('3e78dabd-34c4-4ff3-b4fc-b88a535680b2','astro@dummy.com','$2b$10$K2RKA99QbEqSVTcyZZE8KeRJsZOsxSwxFVVVs7TMDv/SYQ2UMEo0G','astro','2024-12-08 08:52:28','2024-12-08 08:52:28'),('465ad417-59f4-4c30-ae96-4bab8de9c01f','skysfalling@dummy.com','$2b$10$zNfgQT0xxBQl7FDAyT7zfeE7HeauPwz3eHQ/f2e3UO8xGr5tZ.L92','skysfalling','2024-12-08 09:35:51','2024-12-08 09:35:51'),('48622633-bf7a-4723-a94f-4450559f89fb','molly@dummy.com','$2b$10$heRUD4HJOiKRn0TUStOO1edNvodxnK6QL2pAv9OzyhvMCVi24LPFu','molly','2024-12-08 08:52:29','2024-12-08 08:52:29'),('504e8ecc-fd66-4019-81bb-d5cd88f9b309','sligo@dummy.com','$2b$10$q3nPENxknEnv4tlfk.6ZJuiQ.ChUumZo12f711JhLDoQnxLBYEnQq','sligo','2024-12-08 08:52:29','2024-12-08 08:52:29'),('7136ce55-82dd-40e6-9773-9ff66e0e2ea4','ymir@dummy.com','$2b$10$P0Ksk.miysfZz13NWfM3/uzI8z5RpYUtAEPdr5ikfsW8vhM.ljpEq','ymir','2024-12-08 08:52:30','2024-12-08 08:52:30'),('7db47f05-b4aa-4ee4-93a9-cd2011682d81','fish@dummy.com','$2b$10$/BDh2SymVMj0psD/iuS4lO94XT3qvZrwOGh3aZNcaxJohULRYMvVi','fish','2024-12-08 08:52:28','2024-12-08 08:52:28'),('7fd9d44a-e557-4579-ad54-7f5a6b7a9719','harley@dummy.com','$2b$10$iZVA0Mu15zZ3Zab52yEAIeIfigOZNTOAj1d6wH.kuf0B3qR5YnjXK','harley','2024-12-08 08:52:29','2024-12-08 08:52:29'),('82e7479d-163c-4140-bc41-1e2ede5574e5','light@dummy.com','$2b$10$mLIho13G0OkXVfHAc3c2BeUEmW22xYzpcbdTIPrBq5ZfNcSnBO3Fm','light','2024-12-08 08:52:29','2024-12-08 08:52:29'),('8357d262-229a-4f36-b8e1-4cd0b32e3806','quick@dummy.com','$2b$10$/68bhdzGSUwKmv6Jw6brxesR0nHwLW0oy5.ibWZTgUSQ49Ea.oRfu','quick','2024-12-08 08:52:29','2024-12-08 08:52:29'),('844b5a2a-b23b-485e-9650-4568074179fb','night@dummy.com','$2b$10$Gp0TpsCE5x0Eh/ZQmzg4tetcuHcHCyff3KdMaMHZOk8aOO5nyst6.','night','2024-12-08 08:52:29','2024-12-08 08:52:29'),('8ef61936-9f5c-4165-b7e0-3917910ca4a9','jelly@dummy.com','$2b$10$6.m2gfY21NXoecwWDbDcmelDGcP5k3ak99ZdbY9wt4G.DHbDT6Fym','jelly','2024-12-08 08:52:29','2024-12-08 08:52:29'),('91ff19f8-d55e-45cd-a179-437e9b695e88','ender@dummy.com','$2b$10$FB7R69SvhLX08Vj680VQ1On3Tyzao8/eRtThzGiDY5vtq40pj4EQ6','ender','2024-12-08 08:52:28','2024-12-08 08:52:28'),('a034c27a-c870-427c-aa78-c82050b668aa','carmine@dummy.com','$2b$10$Cq4OMW1cbUoSOjet5fNqSuyTBuJiqUBJpe7QrrU0inKXGHZ7AJsFa','carmine','2024-12-08 08:52:28','2024-12-08 08:52:28'),('a04c10c2-c3c1-41e3-8c07-2c54967f613d','ivy@dummy.com','$2b$10$IcHVEsWkKJOXTipNqN0oTeb4rffJifd144V6UttEPUJJWFOQNavA2','ivy','2024-12-08 08:52:29','2024-12-08 08:52:29'),('aad371f9-05e0-4ecc-8a9c-7d62fc40e9f3','xur@dummy.com','$2b$10$bvfjzPtJQfl8m3jgYgftjeL8ph/Z1EFrF6zndHINjlX3vcCPLXmMO','xur','2024-12-08 08:52:30','2024-12-08 08:52:30'),('b7f26bc6-d9c4-4ed6-88ed-f4bf51fab9bd','wyvern@dummy.com','$2b$10$Ob6AlyUmcRV4eq.Gv62UMeWFEPB592PEkq/xW/n0gIaITxqiVr63G','wyvern','2024-12-08 08:52:30','2024-12-08 08:52:30'),('dbe13d25-a876-45dd-bde4-343cd7f740b7','dillo@dummy.com','$2b$10$C.4m2IeGyE/m9J01AVtD.OJlSneaJXqTe6M1RXPIAW2i6IabJVRrK','dillo','2024-12-08 08:52:28','2024-12-08 08:52:28'),('e54699a2-964c-491c-9648-8206254f6e50','thorn@dummy.com','$2b$10$UKKc2d1lTIRe2Slf75ZG9eUA8kTqIgxwSEhnu1Fu2ihIfVf9mSNvS','thorn','2024-12-08 08:52:29','2024-12-08 08:52:29'),('e600d218-15d4-4d85-a9e3-5692f9c7d71b','ghost@dummy.com','$2b$10$EPLUTHtUY5FqdhaFMMlV0OCBqsGBEy.0WZ56eL7jdkcXkCs8sfoDS','ghost','2024-12-08 08:52:29','2024-12-08 08:52:29'),('ef8b5ad8-b194-4124-a890-c1eb1a7c0345','test@mail.com','$2b$10$bibqezavN0QwcSQXVz67ve97WwLNvXl0fHIOV9/UOCTSvTbwhzyWW','tester','2024-12-11 17:25:24','2024-12-11 17:25:24'),('f1414f93-a18e-4454-bdb0-93433cbeac41','zephyr@dummy.com','$2b$10$x4NdFBOqzSte9cITka0KiOEnAJLkeexN9c5GeL/Cl6dbp4Nb59SWy','zephyr','2024-12-08 08:52:30','2024-12-08 08:52:30'),('f1fbc796-3b56-4c5a-b039-2f8561c6a49e','kraken@dummy.com','$2b$10$2SS/Y539MuSQyivqUqibxOxzD3oyYZ.Fz7JYwhdiwC8GxjYGQ7xvi','kraken','2024-12-08 08:52:29','2024-12-08 08:52:29'),('faaf56fb-e30a-4209-9c14-1cfc31dc93b3','bruce@dummy.com','$2b$10$UPLo80jVPN4Gvudhl0C.CuzcbovI473b3JN2zBdhKRm3ZdRRCeggy','bruce','2024-12-08 08:52:28','2024-12-08 08:52:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13 21:47:27
