-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2009 at 06:28 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `apotik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblobat`
--

CREATE TABLE IF NOT EXISTS `tblobat` (
  `kode` char(5) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `satuan` varchar(16) NOT NULL,
  `stock` int(11) NOT NULL,
  `harga_default` int(11) default NULL,
  `keterangan` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblobat`
--

INSERT INTO `tblobat` (`kode`, `nama`, `satuan`, `stock`, `harga_default`, `keterangan`) VALUES
('B001', 'Akta-vol Syrup', 'Botol', 100, 18150, 'Multivitamin Anak, 18 ml'),
('B002', 'Akta-vol Drops', 'Botol', 100, 20900, 'Multivitamin Bayi, 85 ml'),
('B003', 'FeRRiz Drops', 'Tablet', 150, 19800, 'Zat Besi Drops,15 ml'),
('B004', 'Nichofed Syruf', 'Botol', 200, 25000, 'Tripolidine HCL, Pseudoepherdine, 60 ml'),
('B004', 'Nichofed Tab', 'Tablet', 200, 25000, 'Tripolidine HCL, Pseudeopherdine'),
('B005', 'Nilacelin Syruf', 'Botol', 100, 7500, 'Antihistamin + Steroid, 60 ml'),
('B006', 'Nilacelin Tab', 'Tablet', 100, 8500, 'Antihistamin + Steroid'),
('B007', 'Piptal Ped Drops', 'Botol', 150, 32000, 'Antisp smodik, 15 ml'),
('B008', 'Vialyn Syruf', 'Botol', 200, 54000, 'Multivitamin anak + Lysin'),
('B009', 'Vomecho Drops', 'Botol', 100, 7500, 'Domperidone, 10 ml'),
('B010', 'Vomecho Susp', 'Botol', 100, 5600, 'Domperidone'),
('B011', 'Aptor', 'Tablet', 150, 33000, 'Acetyl salicylic acid, 100 mg'),
('B012', 'Loxinic 15 mg', 'Tablet', 100, 15000, 'Meloxicam, 15 mg'),
('B013', 'Neo Mercazole', 'Botol', 100, 12500, 'Carbimazole BP 5 mg'),
('B014', 'Neo Resiguard 5 liter', 'Botol', 100, 120000, 'Antiseptik desinfektan'),
('B015', 'Nichomedson 16 mg', 'Tablet', 200, 12000, 'Metilprednisolon 16 mg'),
('B016', 'Nichospor', 'Tablet', 100, 4500, 'Alendronate Sodium 10 mg'),
('B017', 'Nichoviton', 'Tablet', 100, 6500, 'ATP, Vitamine B 1B6, B12, Vitamine E'),
('B018', 'Nilaflox', 'Tablet', 200, 9500, 'Ciprofloxacin 500 mg'),
('B019', 'Nilavid 200 mg', 'Tablet', 100, 16000, 'Ofloxacin 200 mg'),
('B021', 'Sepran', 'Botol', 20, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblobatkeluar`
--

CREATE TABLE IF NOT EXISTS `tblobatkeluar` (
  `no_keluar` int(10) unsigned NOT NULL auto_increment,
  `tgl` date NOT NULL,
  PRIMARY KEY  (`no_keluar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblobatkeluar`
--

INSERT INTO `tblobatkeluar` (`no_keluar`, `tgl`) VALUES
(1, '2009-12-18'),
(2, '2009-12-18'),
(3, '2009-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `tblobatkeluardetail`
--

CREATE TABLE IF NOT EXISTS `tblobatkeluardetail` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `no_keluar` int(11) NOT NULL,
  `kode_obat` char(5) NOT NULL,
  `harga_satuan` int(11) default NULL,
  `jml` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tblobatkeluardetail`
--

INSERT INTO `tblobatkeluardetail` (`id`, `no_keluar`, `kode_obat`, `harga_satuan`, `jml`) VALUES
(1, 1, 'B001', 18150, 2),
(2, 1, 'B002', 20900, 3),
(3, 1, 'B003', 19800, 3),
(4, 1, 'B005', 7500, 3),
(5, 2, 'B001', 18150, 2),
(6, 2, 'B002', 20900, 1),
(7, 2, 'B004', 25000, 2),
(8, 2, 'B004', 25000, 2),
(9, 3, 'B001', 18150, 1),
(10, 3, 'B003', 19800, 2),
(11, 3, 'B004', 25000, 3),
(12, 3, 'B004', 25000, 3),
(13, 3, 'B005', 7500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblobatmasuk`
--

CREATE TABLE IF NOT EXISTS `tblobatmasuk` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `kode_obat` char(5) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `expired_date` date default NULL,
  `kode_pbf` char(7) default NULL,
  `harga_satuan` int(11) default NULL,
  `tgl_masuk` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tblobatmasuk`
--

INSERT INTO `tblobatmasuk` (`id`, `kode_obat`, `jumlah`, `expired_date`, `kode_pbf`, `harga_satuan`, `tgl_masuk`) VALUES
(2, 'B003', 5, '2009-08-17', 'PBF002', 2500, '2009-12-15'),
(3, 'B002', 3, '2010-08-17', 'PBF002', 2500, '2009-08-17'),
(5, 'B002', 10, '2012-08-17', 'PBF002', 8000, '2009-08-18'),
(14, 'B004', 40, '2009-12-15', 'PBF001', 1000, '2009-12-15'),
(7, 'B003', 15, '2020-08-17', 'PBF001', 2000, '2009-08-18'),
(16, 'B011', 100, '2009-12-15', 'PBF001', 5000, '2009-12-15'),
(15, 'B004', 40, '2009-12-15', 'PBF001', 1000, '2009-12-15'),
(13, 'B001', 20, '2009-08-17', 'PBF001', 2000, '2009-12-15'),
(11, 'B003', 2, '2010-08-17', 'PBF002', 1000, '2009-08-18'),
(17, 'B001', 22, '2009-08-17', 'PBF002', 1200, '2009-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `tblpbf`
--

CREATE TABLE IF NOT EXISTS `tblpbf` (
  `kode` char(7) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `alamat` varchar(255) default NULL,
  `telepon` char(15) default NULL,
  `email` varchar(64) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpbf`
--

INSERT INTO `tblpbf` (`kode`, `nama`, `alamat`, `telepon`, `email`) VALUES
('PBF001', 'PT Kimia Farma', 'Jakarta', '021', 'ki@yahoo.com'),
('PBF002', 'PT. DBM', 'Cirebon', '085721750007', 'DBM.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblretur`
--

CREATE TABLE IF NOT EXISTS `tblretur` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `kode_obat` char(5) default NULL,
  `kode_pbf` char(7) default NULL,
  `jumlah` int(11) default NULL,
  `tgl_retur` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tblretur`
--

INSERT INTO `tblretur` (`id`, `kode_obat`, `kode_pbf`, `jumlah`, `tgl_retur`) VALUES
(11, 'B003', 'PBF001', 1, '2009-12-16'),
(3, 'B002', 'PBF002', 1, '2009-08-18'),
(6, 'B003', 'PBF002', 30, '2009-08-18'),
(9, 'B001', 'PBF001', 15, '2009-08-19'),
(12, 'B004', 'PBF002', 2, '2009-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `tblsatuanobat`
--

CREATE TABLE IF NOT EXISTS `tblsatuanobat` (
  `satuan` varchar(16) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsatuanobat`
--

INSERT INTO `tblsatuanobat` (`satuan`) VALUES
('Tablet'),
('Botol'),
('Kapsul'),
('Kaplet');

-- --------------------------------------------------------

--
-- Table structure for table `tbltempdetailkeluar`
--

CREATE TABLE IF NOT EXISTS `tbltempdetailkeluar` (
  `kode_obat` char(4) NOT NULL,
  `jml` int(11) default NULL,
  `id_user` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltempdetailkeluar`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL,
  `alamat` varchar(255) default NULL,
  `telepon` char(15) default NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `username`, `password`, `alamat`, `telepon`, `status`) VALUES
(1, 'administrator', '123', '-', '-', 2),
(4, 'user', '234', 'Jogja', '0813', 1);
