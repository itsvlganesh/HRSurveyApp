INSERT INTO `bbynhr`.`userprofile`
(`empID`,`userName`,`password`,`roleName`,`deptName`,`groupName`,`status`)VALUES
('02221u','Ganesh','12345','User','Automation Team','IT Group','A');
INSERT INTO `bbynhr`.`userprofile`
(`empID`,`userName`,`password`,`roleName`,`deptName`,`groupName`,`status`)VALUES
('03754u','Ujjawal','12345','User','Automation Team','IT Group','A');
INSERT INTO `bbynhr`.`userprofile`
(`empID`,`userName`,`password`,`roleName`,`deptName`,`groupName`,`status`)VALUES
('0112u','Elham','12345','Admin','null','HR','A');

update userprofile set empID='02221u' where empID='02221';

# 0 for all
INSERT INTO `bbynhr`.`surveymaster`
(`surveyCode`,`surveryName`,`surveryType`,`status`,`targetDeptID`,
`targetGroupID`)
VALUES('SUR1','COVID19 Vacine','AUTH','A','0','0');

INSERT INTO `bbynhr`.`surveydetail`
(`surveyCode`,`QueCode`,`Question`,`QueType`,`status`)
VALUES
('SUR1','QUE1','In the last 10 days, have you received a confirmed diagnosis for coronavirus (COVID-19) by a coronavirus (COVID-19) test or from a diagnosis by a health care professional or are you waiting for a pending COVID-19 test result?',
'dropdown','A');
INSERT INTO `bbynhr`.`surveydetail`
(`surveyCode`,`QueCode`,`Question`,`QueType`,`status`)
VALUES
('SUR1','QUE2','In the last 10 days, have you had close contact with or cared for someone currently diagnosed with COVID-19 or are you participating in a COVID-19 clinical study that includes being exposed to the virus?',
'dropdown','A');
INSERT INTO `bbynhr`.`surveydetail`
(`surveyCode`,`QueCode`,`Question`,`QueType`,`status`)
VALUES
('SUR1','QUE3','Are you fully vaccinated ?',
'dropdown','A');
INSERT INTO `bbynhr`.`surveydetail`
(`surveyCode`,`QueCode`,`Question`,`QueType`,`status`)
VALUES
('SUR1','QUE4','Number of vaccination taken/received ?',
'slide','A');
INSERT INTO `bbynhr`.`surveydetail`
(`surveyCode`,`QueCode`,`Question`,`QueType`,`status`)
VALUES
('SUR1','QUE5','Please mention the vaccine name/code ?',
'editbox','A');

TRUNCATE TABLE surveytrs;

INSERT INTO `bbynhr`.`surveytrs`
(`surveyCode`,`QueCode`,`Answer`,`user`,`status`,`DeviceID`)
VALUES ('SUR1','QUE1','NO','02221','A','12312312asda');
INSERT INTO `bbynhr`.`surveytrs`
(`surveyCode`,`QueCode`,`Answer`,`user`,`status`,`DeviceID`)
VALUES ('SUR1','QUE2','YES, MY CLOSE FRIEND GOT INFECTED BUT I AM TESTED NEGATIVE','02221','A','12312312asda');
INSERT INTO `bbynhr`.`surveytrs`
(`surveyCode`,`QueCode`,`Answer`,`user`,`status`,`DeviceID`)
VALUES ('SUR1','QUE3','YES','02221','A','12312312asda');
INSERT INTO `bbynhr`.`surveytrs`
(`surveyCode`,`QueCode`,`Answer`,`user`,`status`,`DeviceID`)
VALUES ('SUR1','QUE4','3','02221','A','12312312asda');
INSERT INTO `bbynhr`.`surveytrs`
(`surveyCode`,`QueCode`,`Answer`,`user`,`status`,`DeviceID`)
VALUES ('SUR1','QUE5','ASTRAZENCA','02221','A','12312312asda');


INSERT INTO `bbynhr`.`surveytrs`
(`surveyCode`,`QueCode`,`Answer`,`user`,`status`,`DeviceID`)
VALUES ('SUR1','QUE1','YES','03454','A','22312312asda');
INSERT INTO `bbynhr`.`surveytrs`
(`surveyCode`,`QueCode`,`Answer`,`user`,`status`,`DeviceID`)
VALUES ('SUR1','QUE2','YES, MY CLOSE FRIEND GOT INFECTED BUT I AM TESTED NEGATIVE','03454','A','22312312asda');
INSERT INTO `bbynhr`.`surveytrs`
(`surveyCode`,`QueCode`,`Answer`,`user`,`status`,`DeviceID`)
VALUES ('SUR1','QUE3','YES','03454','A','22312312asda');
INSERT INTO `bbynhr`.`surveytrs`
(`surveyCode`,`QueCode`,`Answer`,`user`,`status`,`DeviceID`)
VALUES ('SUR1','QUE4','2','03454','A','22312312asda');
INSERT INTO `bbynhr`.`surveytrs`
(`surveyCode`,`QueCode`,`Answer`,`user`,`status`,`DeviceID`)
VALUES ('SUR1','QUE5','ASTRAZENCA','03454','A','22312312asda');


INSERT INTO `bbynhr`.`status` (`statusCode`,`statusName`,`status`) VALUES ('A','Active','A');
INSERT INTO `bbynhr`.`status` (`statusCode`,`statusName`,`status`) VALUES ('D','Denied','A');
INSERT INTO `bbynhr`.`status` (`statusCode`,`statusName`,`status`) VALUES ('T','Time Overrun','A');
INSERT INTO `bbynhr`.`status` (`statusCode`,`statusName`,`status`) VALUES ('R','Rejected','A');
INSERT INTO `bbynhr`.`status` (`statusCode`,`statusName`,`status`) VALUES ('I','In Progress','A');


INSERT INTO `bbynhr`.`meetreqtypes` (`reqType`,`status`) VALUES ('Pay And Benefits','A');
INSERT INTO `bbynhr`.`meetreqtypes` (`reqType`,`status`) VALUES ('Probation Period Review','A');
INSERT INTO `bbynhr`.`meetreqtypes` (`reqType`,`status`) VALUES ('Appraisal & Promotion','A');
INSERT INTO `bbynhr`.`meetreqtypes` (`reqType`,`status`) VALUES ('Training','A');
INSERT INTO `bbynhr`.`meetreqtypes` (`reqType`,`status`) VALUES ('Sports & Cultural','A');
INSERT INTO `bbynhr`.`meetreqtypes` (`reqType`,`status`) VALUES ('Misc Certificate','A');
INSERT INTO `bbynhr`.`meetreqtypes` (`reqType`,`status`) VALUES ('Others','A');
INSERT INTO `bbynhr`.`meetreqtypes` (`reqType`,`status`) VALUES ('Complaints','A');


INSERT INTO `bbynhr`.`meetreqmodes` (`modeType`,`status`) VALUES ('In Person','A');
INSERT INTO `bbynhr`.`meetreqmodes` (`modeType`,`status`) VALUES ('Phone','A');
INSERT INTO `bbynhr`.`meetreqmodes` (`modeType`,`status`) VALUES ('Email','A');
INSERT INTO `bbynhr`.`meetreqmodes` (`modeType`,`status`) VALUES ('Teams Session','A');
INSERT INTO `bbynhr`.`meetreqmodes` (`modeType`,`status`) VALUES ('Live Chat','A');
INSERT INTO `bbynhr`.`meetreqmodes` (`modeType`,`status`) VALUES ('Any','A');



INSERT INTO `bbynhr`.`delegates`(`empID`,`delegateName`,`profileDesc`,`emailAddr`,`preferredContact`,`preferredLanguage`,`status`,`sex`)
VALUES ('0112u','Elham','HR Partner IT','elham@bb.com','In Person','Bilingual','A','F');
INSERT INTO `bbynhr`.`delegates`(`empID`,`delegateName`,`profileDesc`,`emailAddr`,`preferredContact`,`preferredLanguage`,`status`,`sex`)
VALUES ('0412u','Ahmad','HR Partner Treasury','ahm@bb.com','Email','Arabic','A','M');
INSERT INTO `bbynhr`.`delegates`(`empID`,`delegateName`,`profileDesc`,`primaryPhoneNum`,`emailAddr`,`preferredContact`,`preferredLanguage`,`status`,`sex`)
VALUES ('02712u','Sarah','Employee Relation','96599232211','sara@bb.com','Email','Arabic','A','F');
INSERT INTO `bbynhr`.`delegates`(`empID`,`delegateName`,`profileDesc`,`primaryPhoneNum`,`emailAddr`,`preferredContact`,`preferredLanguage`,`status`,`sex`)
VALUES ('03412u','Mohammad','Employee Relation','96550232241','mhmf@bb.com','Phone','English','A','M');


INSERT INTO `bbynhr`.`meetings`
(`requestorEmpID`,`delegateEmpID`,`reqType`,`modeType`,`empPhoneNum`,`empEmailAddr`,`preferredContact`, `preferredLanguage`, `status`)
VALUES ('02221u','0112u','Training','In Person','50471544',null,'Phone','English','A');
INSERT INTO `bbynhr`.`meetings`
(`requestorEmpID`,`delegateEmpID`,`reqType`,`modeType`,`empPhoneNum`,`empEmailAddr`,`preferredContact`, `preferredLanguage`, `status`)
VALUES ('02221u','0112u','Misc Certificate','Email','50471544','gv@bb.com','Any','English','A');
INSERT INTO `bbynhr`.`meetings`
(`requestorEmpID`,`delegateEmpID`,`reqType`,`modeType`,`empPhoneNum`,`empEmailAddr`,`preferredContact`, `preferredLanguage`, `status`)
VALUES ('03754u','0112u','Sports & Cultural','In Person','53471544',null,'Phone','English','A');









