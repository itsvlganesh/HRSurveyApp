drop table surveyMaster
CREATE TABLE `surveyMaster` (
`surveyCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surveryName` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,  
  `surveryType` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,  
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `approvedDate` datetime NULL,
  `updatedDate` datetime NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `targetDeptID` int(6) NULL,
  `targetGroupID` int(6)  NULL,
   PRIMARY KEY (`surveyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

drop table surveyDetail
CREATE TABLE `surveyDetail` (
`surveyCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,   
  `QueCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,  
  `Question` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,  
  `QueType` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,  
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedDate` datetime NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `misc1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
  `misc2` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
   `misc3` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
    `misc4` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
   UNIQUE KEY `uc_id_survyDetail` (`surveyCode`,`QueCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

drop table surveyTRS
CREATE TABLE `surveyTRS` (
`surveyCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
`QueCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,  
`Answer` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,  
`DeviceID` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,  
`user` varchar(20)  NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,  
  `updatedDate` datetime NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `misc1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
  `misc2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
    `misc3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
  `misc4` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  UNIQUE KEY `uc_id_survyTRS` (`surveyCode`,`QueCode`,`DeviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

drop table Delegates
CREATE TABLE `Delegates` (  
  `empID` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `delegateName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profileDesc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profileImage` BLOB NULL,
  `primaryPhoneNum` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `emailAddr` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `preferredContact` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `preferredLanguage` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,  
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

drop table meetings
CREATE TABLE `meetings` ( 
`meetID` int(9) NOT NULL AUTO_INCREMENT, 
  `requestorEmpID` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `delegateEmpID` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
   `reqType` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
   `modeType` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
   `reqFeedback` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
   `delegFeedback` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `comments` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `empPhoneNum` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `empEmailAddr` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `preferredContact` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `preferredLanguage` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,  
  `requestedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `meetingDateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `approvedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`meetID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `meetReqTypes` (
  `reqID` int(6) NOT NULL AUTO_INCREMENT,
  `reqType` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reqID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

drop table meetReqModes
CREATE TABLE `meetReqModes` (
  `modeID` int(6) NOT NULL AUTO_INCREMENT,
  `modeType` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`modeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `status` (
 `statusCode` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `statusName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`statusCode`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `userdept` (
  `deptID` int(6) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emailIds` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`deptID`),
  UNIQUE KEY `deptName_UNIQUE` (`deptName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `usergroup` (
  `groupID` int(6) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`groupID`),
  UNIQUE KEY `groupName_UNIQUE` (`groupName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `userrole` (
  `roleID` int(6) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`roleID`),
  UNIQUE KEY `roleName_UNIQUE` (`roleName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

drop table userprofile
CREATE TABLE `userprofile` (
  `empID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `userName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
   `roleName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
 `deptName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
 `groupName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


