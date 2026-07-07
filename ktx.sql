-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ktx
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chucnang`
--

DROP TABLE IF EXISTS `chucnang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucnang` (
  `Ma_NV` varchar(10) NOT NULL,
  `Vai_tro` varchar(50) NOT NULL,
  PRIMARY KEY (`Ma_NV`,`Vai_tro`),
  CONSTRAINT `chucnang_ibfk_1` FOREIGN KEY (`Ma_NV`) REFERENCES `nhanvien` (`Ma_NV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucnang`
--

LOCK TABLES `chucnang` WRITE;
/*!40000 ALTER TABLE `chucnang` DISABLE KEYS */;
INSERT INTO `chucnang` VALUES ('NV001','Trưởng ca'),('NV002','Phó ca'),('NV003','Phó ca'),('NV004','Trưởng ca'),('NV005','Phó ca'),('NV006','Phó ca');
/*!40000 ALTER TABLE `chucnang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csvc`
--

DROP TABLE IF EXISTS `csvc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csvc` (
  `Ma_tai_san` varchar(10) NOT NULL,
  `Ten_tai_san` varchar(100) DEFAULT NULL,
  `Tinh_trang` varchar(50) DEFAULT NULL,
  `So_phong` varchar(10) DEFAULT NULL,
  `Ma_toa` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Ma_tai_san`),
  KEY `So_phong` (`So_phong`,`Ma_toa`),
  CONSTRAINT `csvc_ibfk_1` FOREIGN KEY (`So_phong`, `Ma_toa`) REFERENCES `phong` (`So_phong`, `Ma_toa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csvc`
--

LOCK TABLES `csvc` WRITE;
/*!40000 ALTER TABLE `csvc` DISABLE KEYS */;
INSERT INTO `csvc` VALUES ('TS001','Giường','Tốt','P101','ToaA'),('TS002','Quạt','Hỏng','P101','ToaA'),('TS003','Tủ','Tốt','P101','ToaA'),('TS004','Điều hòa','Cần bảo trì','P101','ToaA'),('TS005','Giường','Tốt','P102','ToaA'),('TS006','Quạt','Tốt','P102','ToaA'),('TS007','Tủ','Hỏng','P102','ToaA'),('TS008','Điều hòa','Tốt','P102','ToaA'),('TS009','Giường','Hỏng','P104','ToaA'),('TS010','Quạt','Tốt','P104','ToaA'),('TS011','Tủ','Tốt','P104','ToaA'),('TS012','Điều hòa','Hỏng','P104','ToaA'),('TS013','Giường','Tốt','P204','ToaA'),('TS014','Quạt','Cần bảo trì','P204','ToaA'),('TS015','Tủ','Tốt','P204','ToaA'),('TS016','Điều hòa','Tốt','P204','ToaA'),('TS017','Giường','Hỏng','P103','ToaB'),('TS018','Quạt','Tốt','P103','ToaB'),('TS019','Tủ','Tốt','P103','ToaB'),('TS020','Điều hòa','Hỏng','P103','ToaB'),('TS021','Giường','Tốt','P104','ToaB'),('TS022','Quạt','Hỏng','P104','ToaB'),('TS023','Tủ','Cần bảo trì','P104','ToaB'),('TS024','Điều hòa','Tốt','P104','ToaB'),('TS025','Giường','Tốt','P201','ToaA'),('TS026','Quạt','Hỏng','P201','ToaA'),('TS027','Tủ','Tốt','P201','ToaA'),('TS028','Điều hòa','Hỏng','P201','ToaA'),('TS029','Giường','Tốt','P201','ToaB'),('TS030','Quạt','Tốt','P201','ToaB'),('TS031','Tủ','Hỏng','P201','ToaB'),('TS032','Điều hòa','Cần bảo trì','P201','ToaB');
/*!40000 ALTER TABLE `csvc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangky`
--

DROP TABLE IF EXISTS `dangky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dangky` (
  `Ma_dang_ky` varchar(10) NOT NULL,
  `Ma_SV` varchar(10) DEFAULT NULL,
  `So_phong` varchar(10) DEFAULT NULL,
  `Ma_toa` varchar(10) DEFAULT NULL,
  `Ngay_dang_ky` varchar(50) DEFAULT NULL,
  `Ngay_bat_dau_o` date DEFAULT NULL,
  `Ngay_ket_thuc_o` date DEFAULT NULL,
  PRIMARY KEY (`Ma_dang_ky`),
  KEY `Ma_SV` (`Ma_SV`),
  KEY `So_phong` (`So_phong`,`Ma_toa`),
  CONSTRAINT `dangky_ibfk_1` FOREIGN KEY (`Ma_SV`) REFERENCES `sinhvien` (`Ma_SV`),
  CONSTRAINT `dangky_ibfk_2` FOREIGN KEY (`So_phong`, `Ma_toa`) REFERENCES `phong` (`So_phong`, `Ma_toa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangky`
--

LOCK TABLES `dangky` WRITE;
/*!40000 ALTER TABLE `dangky` DISABLE KEYS */;
INSERT INTO `dangky` VALUES ('DK001','SV002','P101','ToaA','2025-12-25','2026-01-01','2027-06-30'),('DK002','SV004','P101','ToaA','2025-12-25','2026-01-01','2027-06-30'),('DK003','SV006','P101','ToaA','2024-12-25','2025-01-01','2026-06-30'),('DK004','SV008','P101','ToaA','2025-12-25','2026-01-01','2027-06-30'),('DK005','SV010','P101','ToaA','2025-12-25','2026-01-01','2027-06-30'),('DK006','SV012','P101','ToaA','2024-12-25','2025-01-01','2026-06-30'),('DK007','SV014','P104','ToaA','2025-12-25','2026-01-01','2027-06-30'),('DK008','SV016','P104','ToaA','2025-12-25','2026-01-01','2027-06-30'),('DK009','SV018','P302','ToaA','2024-12-25','2025-01-01','2026-06-30'),('DK010','SV020','P302','ToaA','2025-12-25','2026-01-01','2027-06-30'),('DK011','SV001','P201','ToaB','2025-12-25','2026-01-01','2027-06-30'),('DK012','SV003','P201','ToaB','2024-12-25','2025-01-01','2026-06-30'),('DK013','SV005','P201','ToaB','2025-12-25','2026-01-01','2027-06-30'),('DK014','SV007','P203','ToaB','2025-12-25','2026-01-01','2027-06-30'),('DK015','SV009','P203','ToaB','2024-12-25','2025-01-01','2026-06-30'),('DK016','SV011','P203','ToaB','2025-12-25','2026-01-01','2027-06-30'),('DK017','SV013','P204','ToaB','2025-12-25','2026-01-01','2027-06-30'),('DK018','SV015','P204','ToaB','2024-12-25','2025-01-01','2026-06-30'),('DK019','SV017','P204','ToaB','2025-12-25','2026-01-01','2027-06-30'),('DK020','SV019','P204','ToaB','2025-12-25','2026-01-01','2027-06-30');
/*!40000 ALTER TABLE `dangky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `Ma_hoa_don` varchar(10) NOT NULL,
  `So_phong` varchar(10) DEFAULT NULL,
  `Ma_toa` varchar(10) DEFAULT NULL,
  `Ma_NV` varchar(10) DEFAULT NULL,
  `Ngay_xuat` date DEFAULT NULL,
  `Phuong_thuc_thanh_toan` varchar(50) DEFAULT NULL,
  `Tien_dien` decimal(15,2) DEFAULT NULL,
  `Tien_nuoc` decimal(15,2) DEFAULT NULL,
  `Tien_dich_vu` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`Ma_hoa_don`),
  KEY `So_phong` (`So_phong`,`Ma_toa`),
  KEY `hoadon_ibfk_2` (`Ma_NV`),
  CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`So_phong`, `Ma_toa`) REFERENCES `phong` (`So_phong`, `Ma_toa`),
  CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`Ma_NV`) REFERENCES `nhanvien` (`Ma_NV`) ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES ('HD_101A','P101','ToaA','NVHN','2026-04-20','Chuyển khoản',450000.00,120000.00,50000.00),('HD_104A','P104','ToaA','NVHN','2026-04-20','Tiền mặt',210000.00,65000.00,100000.00),('HD_201B','P201','ToaB','NVHN','2026-04-20','',0.00,0.00,0.00),('HD_203A','P203','ToaA','NVHN','2026-04-20','Tiền mặt',520000.00,150000.00,100000.00),('HD_204B','P204','ToaB','NVHN','2026-04-20','Chuyển khoản',380000.00,90000.00,100000.00),('HD_302A','P302','ToaA','NVHN','2026-04-20','Chuyển khoản',350000.00,95000.00,100000.00);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hopdong`
--

DROP TABLE IF EXISTS `hopdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hopdong` (
  `Ma_hop_dong` varchar(10) NOT NULL,
  `Ma_SV` varchar(10) DEFAULT NULL,
  `Ma_NV` varchar(10) DEFAULT NULL,
  `Ngay_ky` date DEFAULT NULL,
  `Ngay_het_han` date DEFAULT NULL,
  PRIMARY KEY (`Ma_hop_dong`),
  KEY `Ma_SV` (`Ma_SV`),
  KEY `hopdong_ibfk_2` (`Ma_NV`),
  CONSTRAINT `hopdong_ibfk_1` FOREIGN KEY (`Ma_SV`) REFERENCES `sinhvien` (`Ma_SV`),
  CONSTRAINT `hopdong_ibfk_2` FOREIGN KEY (`Ma_NV`) REFERENCES `nhanvien` (`Ma_NV`) ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hopdong`
--

LOCK TABLES `hopdong` WRITE;
/*!40000 ALTER TABLE `hopdong` DISABLE KEYS */;
INSERT INTO `hopdong` VALUES ('HD001','SV001','NVHG','2025-12-25','2026-06-30'),('HD002','SV002','NVHG','2025-12-25','2026-06-30'),('HD003','SV003','NVHG','2024-12-26','2025-06-30'),('HD004','SV004','NVHG','2025-12-26','2026-06-30'),('HD005','SV005','NVHG','2025-12-26','2026-06-30'),('HD006','SV006','NVHG','2024-12-27','2025-06-30'),('HD007','SV007','NVHG','2025-12-27','2026-06-30'),('HD008','SV008','NVHG','2025-12-27','2026-06-30'),('HD009','SV009','NVHG','2024-12-28','2025-06-30'),('HD010','SV010','NVHG','2025-12-28','2026-06-30'),('HD011','SV011','NVHG','2025-12-28','2026-06-30'),('HD012','SV012','NVHG','2024-12-29','2025-06-30'),('HD013','SV013','NVHG','2025-12-29','2026-06-30'),('HD014','SV014','NVHG','2025-12-29','2026-06-30'),('HD015','SV015','NVHG','2024-12-30','2025-06-30'),('HD016','SV016','NVHG','2025-12-30','2026-06-30'),('HD017','SV017','NVHG','2025-12-30','2026-06-30'),('HD018','SV018','NVHG','2024-12-31','2025-06-30'),('HD019','SV019','NVHG','2025-12-31','2026-06-30'),('HD020','SV020','NVHG','2025-12-31','2026-06-30');
/*!40000 ALTER TABLE `hopdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaiphong`
--

DROP TABLE IF EXISTS `loaiphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaiphong` (
  `Loai_phong` varchar(20) NOT NULL,
  `Gia_phong` decimal(15,2) DEFAULT NULL,
  `So_luong_toi_da` int DEFAULT NULL,
  PRIMARY KEY (`Loai_phong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaiphong`
--

LOCK TABLES `loaiphong` WRITE;
/*!40000 ALTER TABLE `loaiphong` DISABLE KEYS */;
INSERT INTO `loaiphong` VALUES ('Standard',1000000.00,6),('VIP',2000000.00,4);
/*!40000 ALTER TABLE `loaiphong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `Ma_NV` varchar(10) NOT NULL,
  `Ho_va_ten` varchar(100) NOT NULL,
  `Chuc_vu` varchar(50) DEFAULT NULL,
  `Ma_NV_quan_ly` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Ma_NV`),
  KEY `Ma_NV_quan_ly` (`Ma_NV_quan_ly`),
  CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`Ma_NV_quan_ly`) REFERENCES `nhanvien` (`Ma_NV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('NV001','Hoàng Đức Duy','Nhân viên','TT'),('NV002','Vũ Ngọc Hà','Nhân viên','TT'),('NV003','Đỗ Hoàng Long','Nhân viên','TT'),('NV004','Ngô Phương Thảo','Nhân viên','TT'),('NV005','Bùi Quang Huy','Nhân viên','TT'),('NV006','Đặng Thanh Trúc','Nhân viên','TT'),('NVBV1','Trương Công Vinh','Bảo vệ','TT'),('NVBV2','Đinh Hoài Thu','Bảo vệ','TT'),('NVHG','Phạm Minh Anh','Quản lý hợp đồng','TT'),('NVHN','Lê Quốc Cường','Quản lý hóa đơn','TT'),('PT','Trần Thị Bình','Phó tòa','TT'),('TT','Nguyễn Văn An','Trưởng tòa',NULL);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phong`
--

DROP TABLE IF EXISTS `phong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phong` (
  `So_phong` varchar(10) NOT NULL,
  `Ma_toa` varchar(10) NOT NULL,
  `Loai_phong` varchar(20) DEFAULT NULL,
  `So_luong_hien_tai` int DEFAULT '0',
  PRIMARY KEY (`So_phong`,`Ma_toa`),
  KEY `Ma_toa` (`Ma_toa`),
  KEY `Loai_phong` (`Loai_phong`),
  CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`Ma_toa`) REFERENCES `toanha` (`Ma_toa`),
  CONSTRAINT `phong_ibfk_2` FOREIGN KEY (`Loai_phong`) REFERENCES `loaiphong` (`Loai_phong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phong`
--

LOCK TABLES `phong` WRITE;
/*!40000 ALTER TABLE `phong` DISABLE KEYS */;
INSERT INTO `phong` VALUES ('P101','ToaA','Standard',6),('P101','ToaB','Standard',0),('P102','ToaA','Standard',0),('P102','ToaB','Standard',0),('P103','ToaA','Standard',0),('P103','ToaB','Standard',0),('P104','ToaA','VIP',2),('P104','ToaB','VIP',0),('P201','ToaA','Standard',0),('P201','ToaB','Standard',3),('P202','ToaA','Standard',0),('P202','ToaB','Standard',0),('P203','ToaA','Standard',0),('P203','ToaB','Standard',3),('P204','ToaA','VIP',0),('P204','ToaB','VIP',4),('P301','ToaA','Standard',0),('P301','ToaB','Standard',0),('P302','ToaA','Standard',2),('P302','ToaB','Standard',0),('P303','ToaA','Standard',0),('P303','ToaB','Standard',0),('P304','ToaA','VIP',0),('P304','ToaB','VIP',0),('P401','ToaA','Standard',0),('P401','ToaB','Standard',0),('P402','ToaA','Standard',0),('P402','ToaB','Standard',0),('P403','ToaA','Standard',0),('P403','ToaB','Standard',0),('P404','ToaA','VIP',0),('P404','ToaB','VIP',0);
/*!40000 ALTER TABLE `phong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quanlycsvc`
--

DROP TABLE IF EXISTS `quanlycsvc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quanlycsvc` (
  `Ma_tai_san` varchar(10) NOT NULL,
  `Ma_NV` varchar(10) NOT NULL,
  `Ngay_kiem_tra` date NOT NULL,
  `Trang_thai` varchar(50) DEFAULT NULL,
  `Ghi_chu` text,
  PRIMARY KEY (`Ma_tai_san`,`Ma_NV`,`Ngay_kiem_tra`),
  KEY `fk_csvc_nhanvien` (`Ma_NV`),
  CONSTRAINT `fk_csvc_nhanvien` FOREIGN KEY (`Ma_NV`) REFERENCES `nhanvien` (`Ma_NV`),
  CONSTRAINT `fk_csvc_taisan` FOREIGN KEY (`Ma_tai_san`) REFERENCES `csvc` (`Ma_tai_san`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quanlycsvc`
--

LOCK TABLES `quanlycsvc` WRITE;
/*!40000 ALTER TABLE `quanlycsvc` DISABLE KEYS */;
INSERT INTO `quanlycsvc` VALUES ('TS002','NVBV1','2026-04-21','Hỏng','Quạt cháy cuộn dây, cần thay mới'),('TS004','NVBV1','2026-04-21','Cần bảo trì','Lưới lọc bụi quá bẩn'),('TS007','NVBV1','2026-04-21','Hỏng','Bản lề bị gãy'),('TS009','NVBV1','2026-04-21','Hỏng','Gãy 1 thanh giát giường'),('TS012','NVBV1','2026-04-21','Hỏng','Máy nén không chạy'),('TS014','NVBV1','2026-04-21','Cần bảo trì','Quạt kêu to, cần tra dầu'),('TS017','NVBV2','2026-04-21','Hỏng','Gãy chân giường'),('TS020','NVBV2','2026-04-21','Hỏng','Hết gas, không làm lạnh'),('TS022','NVBV2','2026-04-21','Hỏng','Gãy cánh quạt'),('TS023','NVBV2','2026-04-21','Cần bảo trì','Khóa tủ bị kẹt'),('TS026','NVBV1','2026-04-21','Hỏng','Đứt dây nguồn'),('TS028','NVBV1','2026-04-21','Hỏng','Rò rỉ nước ở dàn lạnh'),('TS031','NVBV2','2026-04-21','Hỏng','Mất chìa khóa'),('TS032','NVBV2','2026-04-21','Cần bảo trì',NULL);
/*!40000 ALTER TABLE `quanlycsvc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quanlyphong`
--

DROP TABLE IF EXISTS `quanlyphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quanlyphong` (
  `So_phong` varchar(10) NOT NULL,
  `Ma_NV` varchar(10) NOT NULL,
  `Ngay_bat_dau` date NOT NULL,
  `Ngay_ket_thuc` date DEFAULT NULL,
  PRIMARY KEY (`So_phong`,`Ma_NV`,`Ngay_bat_dau`),
  KEY `Ma_NV` (`Ma_NV`),
  CONSTRAINT `quanlyphong_ibfk_2` FOREIGN KEY (`Ma_NV`) REFERENCES `nhanvien` (`Ma_NV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quanlyphong`
--

LOCK TABLES `quanlyphong` WRITE;
/*!40000 ALTER TABLE `quanlyphong` DISABLE KEYS */;
INSERT INTO `quanlyphong` VALUES ('P101','NV001','2026-04-01','2026-04-30'),('P102','NV001','2026-04-01','2026-04-30'),('P103','NV003','2026-04-01','2026-04-30'),('P104','NV001','2026-04-01','2026-04-30'),('P104','NV003','2026-04-01','2026-04-30'),('P204','NV002','2026-04-01','2026-04-30');
/*!40000 ALTER TABLE `quanlyphong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quanlytoa`
--

DROP TABLE IF EXISTS `quanlytoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quanlytoa` (
  `Ma_toa` varchar(10) NOT NULL,
  `Ma_NV` varchar(10) NOT NULL,
  PRIMARY KEY (`Ma_toa`,`Ma_NV`),
  KEY `Ma_NV` (`Ma_NV`),
  CONSTRAINT `quanlytoa_ibfk_1` FOREIGN KEY (`Ma_toa`) REFERENCES `toanha` (`Ma_toa`),
  CONSTRAINT `quanlytoa_ibfk_2` FOREIGN KEY (`Ma_NV`) REFERENCES `nhanvien` (`Ma_NV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quanlytoa`
--

LOCK TABLES `quanlytoa` WRITE;
/*!40000 ALTER TABLE `quanlytoa` DISABLE KEYS */;
INSERT INTO `quanlytoa` VALUES ('ToaA','TT'),('ToaB','TT');
/*!40000 ALTER TABLE `quanlytoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinhvien` (
  `Ma_SV` varchar(10) NOT NULL,
  `Ho` varchar(50) DEFAULT NULL,
  `Ten_dem` varchar(50) DEFAULT NULL,
  `Ten` varchar(50) DEFAULT NULL,
  `Gioi_tinh` varchar(10) DEFAULT NULL,
  `Ngay_sinh` date DEFAULT NULL,
  `Nganh` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Ma_SV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinhvien`
--

LOCK TABLES `sinhvien` WRITE;
/*!40000 ALTER TABLE `sinhvien` DISABLE KEYS */;
INSERT INTO `sinhvien` VALUES ('SV001','Nguyen','Van','An','Nam','2005-05-15','CNTT'),('SV002','Tran','Thi','Binh','Nu','2005-08-22','ATTT'),('SV003','Le','Quoc','Cuong','Nam','2004-12-01','KHMT'),('SV004','Pham','Minh','Anh','Nu','2005-03-10','CNĐPT'),('SV005','Hoang','Duc','Duy','Nam','2005-11-25','TTĐPT'),('SV006','Vu','Ngoc','Ha','Nu','2004-07-14','BC'),('SV007','Do','Hoang','Long','Nam','2005-01-30','ĐTVT'),('SV008','Ngo','Phuong','Thao','Nu','2005-09-05','MKT'),('SV009','Bui','Quang','Huy','Nam','2004-04-20','CNTT'),('SV010','Dang','Thanh','Truc','Nu','2005-02-18','ATTT'),('SV011','Ly','Gia','Bao','Nam','2005-06-12','KHMT'),('SV012','Phan','Khanh','Linh','Nu','2004-10-29','CNĐPT'),('SV013','Truong','Cong','Vinh','Nam','2005-08-08','TTĐPT'),('SV014','Dinh','Hoai','Thu','Nu','2005-04-03','BC'),('SV015','Lam','Nhat','Minh','Nam','2004-01-15','ĐTVT'),('SV016','Quach','Lan','Huong','Nu','2005-12-20','MKT'),('SV017','Luong','Van','Tung','Nam','2005-07-07','CNTT'),('SV018','Trieu','Le','Quyen','Nu','2004-05-25','ATTT'),('SV019','Vo','Thanh','Son','Nam','2005-10-11','KHMT'),('SV020','Dao','Mai','Chi','Nu','2005-03-30','CNĐPT');
/*!40000 ALTER TABLE `sinhvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svnuocngoai`
--

DROP TABLE IF EXISTS `svnuocngoai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svnuocngoai` (
  `Ma_SV` varchar(10) NOT NULL,
  `So_ho_chieu` varchar(20) DEFAULT NULL,
  `Quoc_tich` varchar(50) DEFAULT NULL,
  `Visa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Ma_SV`),
  UNIQUE KEY `So_ho_chieu` (`So_ho_chieu`),
  CONSTRAINT `svnuocngoai_ibfk_1` FOREIGN KEY (`Ma_SV`) REFERENCES `sinhvien` (`Ma_SV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svnuocngoai`
--

LOCK TABLES `svnuocngoai` WRITE;
/*!40000 ALTER TABLE `svnuocngoai` DISABLE KEYS */;
INSERT INTO `svnuocngoai` VALUES ('SV002','LA-1001','Lào','V-LA01'),('SV004','KH-2002','Campuchia','V-KH02'),('SV006','KR-3003','Hàn Quốc','V-KR03'),('SV008','LA-1004','Lào','V-LA04'),('SV010','KH-2005','Campuchia','V-KH05'),('SV012','KR-3006','Hàn Quốc','V-KR06'),('SV014','LA-1007','Lào','V-LA07'),('SV016','KH-2008','Campuchia','V-KH08'),('SV018','KR-3009','Hàn Quốc','V-KR09'),('SV020','LA-1010','Lào','V-LA10');
/*!40000 ALTER TABLE `svnuocngoai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svsdt`
--

DROP TABLE IF EXISTS `svsdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svsdt` (
  `Ma_SV` varchar(10) NOT NULL,
  `SDT` varchar(15) NOT NULL,
  PRIMARY KEY (`Ma_SV`,`SDT`),
  CONSTRAINT `svsdt_ibfk_1` FOREIGN KEY (`Ma_SV`) REFERENCES `sinhvien` (`Ma_SV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svsdt`
--

LOCK TABLES `svsdt` WRITE;
/*!40000 ALTER TABLE `svsdt` DISABLE KEYS */;
INSERT INTO `svsdt` VALUES ('SV001','0901234567'),('SV002','0912345678'),('SV003','0923456789'),('SV004','0934567890'),('SV005','0945678901'),('SV006','0956789012'),('SV007','0967890123'),('SV008','0978901234'),('SV009','0989012345'),('SV010','0990123456'),('SV011','0812345678'),('SV012','0823456789'),('SV013','0834567890'),('SV014','0845678901'),('SV015','0856789012'),('SV016','0867890123'),('SV017','0878901234'),('SV018','0889012345'),('SV019','0890123456'),('SV020','0701234567');
/*!40000 ALTER TABLE `svsdt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svtrongnuoc`
--

DROP TABLE IF EXISTS `svtrongnuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svtrongnuoc` (
  `Ma_SV` varchar(10) NOT NULL,
  `CCCD` varchar(12) DEFAULT NULL,
  `Que_quan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Ma_SV`),
  CONSTRAINT `svtrongnuoc_ibfk_1` FOREIGN KEY (`Ma_SV`) REFERENCES `sinhvien` (`Ma_SV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svtrongnuoc`
--

LOCK TABLES `svtrongnuoc` WRITE;
/*!40000 ALTER TABLE `svtrongnuoc` DISABLE KEYS */;
INSERT INTO `svtrongnuoc` VALUES ('SV001','038205001234','Hà Nội'),('SV003','038204005678','Hà Nội'),('SV005','038205009012','Hải Phòng'),('SV007','038205003456','Hà Tĩnh'),('SV009','038204007890','Hà Nội'),('SV011','038205001122','Nghệ An'),('SV013','038205003344','Thanh Hóa'),('SV015','038204005566','Hà Nội'),('SV017','038205007788','Thanh Hóa'),('SV019','038205009900','Hải Phòng');
/*!40000 ALTER TABLE `svtrongnuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toanha`
--

DROP TABLE IF EXISTS `toanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toanha` (
  `Ma_toa` varchar(10) NOT NULL,
  `Ten_toa` varchar(50) NOT NULL,
  `So_tang` int DEFAULT NULL,
  PRIMARY KEY (`Ma_toa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toanha`
--

LOCK TABLES `toanha` WRITE;
/*!40000 ALTER TABLE `toanha` DISABLE KEYS */;
INSERT INTO `toanha` VALUES ('ToaA','Tòa nhà A',4),('ToaB','Tòa nhà B',4);
/*!40000 ALTER TABLE `toanha` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-07 22:40:17
