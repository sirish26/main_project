/*
MySQL Data Transfer
Source Host: localhost
Source Database: sdtd
Target Host: localhost
Target Database: sdtd
Date: 26-FEB-23 6:15:17 PM
*/


create database sdtd;

use sdtd;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for charm_aliyunosstresh
-- ----------------------------
DROP TABLE IF EXISTS `charm_aliyunosstresh`;
CREATE TABLE `charm_aliyunosstresh` (
  `id` int(11) NOT NULL auto_increment,
  `ownername` text,
  `cloudname` text,
  `vm` text,
  `vmmem` text,
  `cost` text,
  `threshold` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_aliyunossvm
-- ----------------------------
DROP TABLE IF EXISTS `charm_aliyunossvm`;
CREATE TABLE `charm_aliyunossvm` (
  `id` int(11) NOT NULL auto_increment,
  `ownername` text,
  `cloudname` text,
  `vm` text,
  `vmmem` text,
  `cost` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_amazons3tresh
-- ----------------------------
DROP TABLE IF EXISTS `charm_amazons3tresh`;
CREATE TABLE `charm_amazons3tresh` (
  `id` int(11) NOT NULL auto_increment,
  `ownername` text,
  `cloudname` text,
  `vm` text,
  `vmmem` text,
  `cost` text,
  `threshold` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_amazons3vm
-- ----------------------------
DROP TABLE IF EXISTS `charm_amazons3vm`;
CREATE TABLE `charm_amazons3vm` (
  `id` int(11) NOT NULL auto_increment,
  `ownername` text,
  `cloudname` text,
  `vm` text,
  `vmmem` text,
  `cost` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_aovmcost
-- ----------------------------
DROP TABLE IF EXISTS `charm_aovmcost`;
CREATE TABLE `charm_aovmcost` (
  `id` int(11) NOT NULL auto_increment,
  `memory` text,
  `cost` text,
  `cname` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_attacker
-- ----------------------------
DROP TABLE IF EXISTS `charm_attacker`;
CREATE TABLE `charm_attacker` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `fname` text,
  `cname` text,
  `sk` text,
  `type` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_avmcost
-- ----------------------------
DROP TABLE IF EXISTS `charm_avmcost`;
CREATE TABLE `charm_avmcost` (
  `id` int(11) NOT NULL auto_increment,
  `memory` text,
  `cost` text,
  `cname` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_cloud
-- ----------------------------
DROP TABLE IF EXISTS `charm_cloud`;
CREATE TABLE `charm_cloud` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `cname` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_cloudserver
-- ----------------------------
DROP TABLE IF EXISTS `charm_cloudserver`;
CREATE TABLE `charm_cloudserver` (
  `id` int(11) NOT NULL auto_increment,
  `fname` text,
  `ct` text,
  `ownername` text,
  `cname` text,
  `vm` text,
  `mac` text,
  `sk` text,
  `rank` int(11) default NULL,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_memcons
-- ----------------------------
DROP TABLE IF EXISTS `charm_memcons`;
CREATE TABLE `charm_memcons` (
  `id` int(11) NOT NULL auto_increment,
  `ownername` text,
  `fname` text,
  `cloudname` text,
  `vmused` text,
  `remvm` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_mig
-- ----------------------------
DROP TABLE IF EXISTS `charm_mig`;
CREATE TABLE `charm_mig` (
  `id` int(11) NOT NULL auto_increment,
  `ownername` text,
  `fname` text,
  `cloudname` text,
  `migcloud` text,
  `newn` text,
  `email` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_owner
-- ----------------------------
DROP TABLE IF EXISTS `charm_owner`;
CREATE TABLE `charm_owner` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `location` text,
  `cloudname` text,
  `imagess` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_ownerdetails
-- ----------------------------
DROP TABLE IF EXISTS `charm_ownerdetails`;
CREATE TABLE `charm_ownerdetails` (
  `id` int(11) NOT NULL auto_increment,
  `fname` text,
  `ownername` text,
  `cname` text,
  `mac` text,
  `sk` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_proxy
-- ----------------------------
DROP TABLE IF EXISTS `charm_proxy`;
CREATE TABLE `charm_proxy` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_proxyserver
-- ----------------------------
DROP TABLE IF EXISTS `charm_proxyserver`;
CREATE TABLE `charm_proxyserver` (
  `id` int(11) NOT NULL auto_increment,
  `fname` text,
  `ownername` text,
  `cname` text,
  `vm` text,
  `mac` text,
  `sk` text,
  `mem` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_rackspacetresh
-- ----------------------------
DROP TABLE IF EXISTS `charm_rackspacetresh`;
CREATE TABLE `charm_rackspacetresh` (
  `id` int(11) NOT NULL auto_increment,
  `ownername` text,
  `cloudname` text,
  `vm` text,
  `vmmem` text,
  `cost` text,
  `threshold` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_rackspacevm
-- ----------------------------
DROP TABLE IF EXISTS `charm_rackspacevm`;
CREATE TABLE `charm_rackspacevm` (
  `id` int(11) NOT NULL auto_increment,
  `ownername` text,
  `cloudname` text,
  `vm` text,
  `vmmem` text,
  `cost` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_rvmcost
-- ----------------------------
DROP TABLE IF EXISTS `charm_rvmcost`;
CREATE TABLE `charm_rvmcost` (
  `id` int(11) NOT NULL auto_increment,
  `memory` text,
  `cost` text,
  `cname` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_transaction
-- ----------------------------
DROP TABLE IF EXISTS `charm_transaction`;
CREATE TABLE `charm_transaction` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `fname` text,
  `cname` text,
  `sk` text,
  `task` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_user
-- ----------------------------
DROP TABLE IF EXISTS `charm_user`;
CREATE TABLE `charm_user` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `location` text,
  `cloudname` text,
  `imagess` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_userrequest
-- ----------------------------
DROP TABLE IF EXISTS `charm_userrequest`;
CREATE TABLE `charm_userrequest` (
  `id` int(11) NOT NULL auto_increment,
  `username` text,
  `ownername` text,
  `userfrm` text,
  `fnamereq` varchar(30) default '',
  `sk` text,
  `reqdate` text,
  `resdate` text,
  `resstatus` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_windowsazuretresh
-- ----------------------------
DROP TABLE IF EXISTS `charm_windowsazuretresh`;
CREATE TABLE `charm_windowsazuretresh` (
  `id` int(11) NOT NULL auto_increment,
  `ownername` text,
  `cloudname` text,
  `vm` text,
  `vmmem` text,
  `cost` text,
  `threshold` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_windowsazurevm
-- ----------------------------
DROP TABLE IF EXISTS `charm_windowsazurevm`;
CREATE TABLE `charm_windowsazurevm` (
  `id` int(11) NOT NULL auto_increment,
  `ownername` text,
  `cloudname` text,
  `vm` text,
  `vmmem` text,
  `cost` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for charm_wvmcost
-- ----------------------------
DROP TABLE IF EXISTS `charm_wvmcost`;
CREATE TABLE `charm_wvmcost` (
  `id` int(11) NOT NULL auto_increment,
  `memory` text,
  `cost` text,
  `cname` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;