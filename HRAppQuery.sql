INSERT INTO `bbynhr`.`userprofile`
(`empID`,`userName`,`password`,`roleID`,`deptID`,`groupID`,`status`)VALUES
('2221','Ganesh','12345',2,6,1,'A');

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