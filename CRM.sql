USE test;
#组织结构(部门表)
CREATE TABLE Dept(
	id INT PRIMARY KEY AUTO_INCREMENT, #部门编号
	deptCode VARCHAR(50) NOT NULL,#部门编码
	`name` VARCHAR(50) NOT NULL,#部门名称
	lastUpdateTime VARCHAR(50) NOT NULL,#最后修改时间
	operator VARCHAR(50) NOT NULL,#操作人
	intro VARCHAR(200) NOT NULL,#部门简介
	remark VARCHAR(500) #备注
)CHARSET=utf8;
INSERT INTO Dept(`id`,`deptCode`,`name`,`lastUpdateTime`,`operator`,`intro`,`remark`)
VALUES(DEFAULT,'1001','综合部',NOW(),'系统管理员','综合部',NULL)
,(DEFAULT,'1002','市场发展部',NOW(),'系统管理员','市场发展部',NULL)
,(DEFAULT,'1003','财务部',NOW(),'系统管理员','财务部',NULL);
#角色管理
CREATE TABLE Role(
	id INT PRIMARY KEY AUTO_INCREMENT, #角色id
	roleCode VARCHAR(50) NOT NULL,#角色编码
	roleName VARCHAR(50) NOT NULL,#角色名称
	createTime TIMESTAMP DEFAULT NOW()NOT NULL,#创建时间
	lastUpdateTime DATETIME NOT NULL,#最后修改时间
	createdBy VARCHAR(100) NOT NULL,#创建者
	remark VARCHAR(500),#备注
	deptId INT NOT NULL#关联部门id
)CHARSET=utf8;
ALTER TABLE Role ADD CONSTRAINT `role_deptId` FOREIGN KEY(`deptId`) REFERENCES Dept(`id`);
INSERT INTO Role(`id`,`roleCode`,`roleName`,`createTime`,`lastUpdateTime`,`createdBy`,`remark`,`deptId`)
VALUES(DEFAULT,'1001','系统管理员',DEFAULT,'2018-2-25','系统管理员',NULL,1),
(DEFAULT,'1002','销售总监',DEFAULT,'2018-2-25','系统管理员',NULL,2),
(DEFAULT,'1003','销售经理',DEFAULT,'2018-2-25','系统管理员',NULL,2),
(DEFAULT,'1004','销售代表',DEFAULT,'2018-2-25','系统管理员',NULL,2),
(DEFAULT,'1005','财务管理',DEFAULT,'2018-2-25','系统管理员',NULL,3);
#员工管理（用户表）
CREATE TABLE `User`(
	id INT PRIMARY KEY AUTO_INCREMENT, #用户id
	userCode VARCHAR(50) NOT NULL,#用户编码
	userName VARCHAR(50) NOT NULL,#用户名
	userPassword VARCHAR(50) NOT NULL,#密码
	gender INT NOT NULL,#性别
	phone VARCHAR(100) NOT NULL,#电话 加个手机号码
	creationTime TIMESTAMP DEFAULT NOW()NOT NULL,#注册时间
	lastLoginTime DATETIME NOT NULL, #最后登录时间 这个就变为最后修改时间了
	createdBy VARCHAR(50) NOT NULL, #创建者
	isStart INT NOT NULL, #是否启用1--启用,0--不启用
	roleId INT NOT NULL, #关联角色id
	deptId INT NOT NULL#关联部门id
)CHARSET=utf8;
ALTER TABLE `User` ADD CONSTRAINT `user_roleId` FOREIGN KEY(`roleId`) REFERENCES Role(`id`);
ALTER TABLE `User` ADD CONSTRAINT `user_deptId` FOREIGN KEY(`deptId`) REFERENCES Dept(`id`);
INSERT INTO `User`(`id`,`userCode`,`userName`,`userPassword`,`gender`,`phone`,`creationTime`,`lastLoginTime`,`createdBy`,`isStart`,`roleId`,`deptId`)
VALUES(DEFAULT,'zhangsan','张三','202cb962ac59075b964b07152d234b70',0,'13455667788',NOW(),NOW(),'系统管理员',1,1,1),
(DEFAULT,'lisi','李四','202cb962ac59075b964b07152d234b70',1,'15455667788',NOW(),NOW(),'系统管理员',1,2,2),
(DEFAULT,'wangwu','王五','202cb962ac59075b964b07152d234b70',0,'18455667788',NOW(),NOW(),'系统管理员',1,3,2),
(DEFAULT,'ermao','王二毛','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'系统管理员',1,4,2),
(DEFAULT,'sanmao','王三毛','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'系统管理员',1,4,2),
(DEFAULT,'simao','王四毛','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'系统管理员',1,4,2),
(DEFAULT,'laowu','王老五','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'系统管理员',1,4,2),
(DEFAULT,'xiaoli','小丽','202cb962ac59075b964b07152d234b70',1,'16455667788',NOW(),NOW(),'系统管理员',1,4,3);
#公告管理,
CREATE TABLE Notice(
	id INT PRIMARY KEY AUTO_INCREMENT,
	noticeCode VARCHAR(50) NOT NULL,#公告编码
	title VARCHAR(50) NOT NULL,#公告标题
	`type` VARCHAR(50) NOT NULL,#公告类型
	issueTime TIMESTAMP DEFAULT NOW()NOT NULL,#发布时间
	issueBy VARCHAR(50) NOT NULL,#发布人
	content VARCHAR(500) NOT NULL#内容
)CHARSET=utf8;
INSERT INTO Notice(`id`,`noticeCode`,`title`,`type`,`issueTime`,`issueBy`,`content`)
VALUES(DEFAULT,'1001','2014年公司年会安排','部门公告',NOW(),'张三','公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作。'),
(DEFAULT,'1002','2014年差旅费报销通知','通知',NOW(),'小毛','公司将于2014年1月1日起实施新的国内差旅'),
(DEFAULT,'1003','第三季度公司优秀员工评选结果','全体公告',NOW(),'小丽','公司将于2014年1月1日起实施新的国内差旅'),
(DEFAULT,'1004','11月11日不网购有奖通知','行政公告',NOW(),'李四','为了端正公司日常办公秩序，特通知如下：');

#销售计划
CREATE TABLE Plan(
	id INT PRIMARY KEY AUTO_INCREMENT,
	`code` VARCHAR(50) NOT NULL,
	`userName` VARCHAR(50) NOT NULL,
	`month` VARCHAR(50) NOT NULL,#月份
	`status` VARCHAR(50) DEFAULT '新创建' NOT NULL,#状态
	planContent VARCHAR(500) NOT NULL,#计划内容
	lastUpdateTime TIMESTAMP DEFAULT NOW()NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50)#待处理人，关联部门 找和他相同部门的销售经理
)CHARSET=utf8;
ALTER TABLE Plan ADD CONSTRAINT `Plan_userId` FOREIGN KEY(`userId`) REFERENCES `User`(`id`);
INSERT INTO Plan(`id`,`code`,`userName`,`month`,`status`,`planContent`,`lastUpdateTime`,createdBy,nextHanlder)
VALUES(DEFAULT,'LY201311','王四毛','2013-10',DEFAULT,'公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作。',DEFAULT,'张三',''),
(DEFAULT,'LY201311','王四毛','2013-09',DEFAULT,'公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作2。',DEFAULT,'张三',''),
(DEFAULT,'LY201311','王四毛','2013-04','已提交','公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作3。',DEFAULT,'张三','王五'),
(DEFAULT,'LY201311','王四毛','2013-05','已通过','公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作4。',DEFAULT,'张三',''),
(DEFAULT,'LY201311','王四毛','2013-06','已提交','公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作5。',DEFAULT,'张三','王五');
#销售预策
CREATE TABLE Forecast(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50) NOT NULL,
	result VARCHAR(500) NOT NULL, #预测结果
	`month` VARCHAR(50) NOT NULL,#月份
	`date` TIMESTAMP DEFAULT NOW()NOT NULL,#创建时间
	deptId INT NOT NULL,#部门id
	scale INT NOT NULL,#部门规模人数
	customerNum INT NOT NULL,#客户数量
	`type` VARCHAR(50) NOT NULL,#类型 在预测那里加一个
	createdBy VARCHAR(50) NOT NULL #操作人
)CHARSET=utf8;
ALTER TABLE Forecast ADD CONSTRAINT `Forecast_deptId` FOREIGN KEY(`deptId`) REFERENCES Dept(`id`);
INSERT INTO Forecast(`id`,`title`,result,`month`,`date`,`deptId`,`scale`,`customerNum`,`type`,createdBy)
VALUES(DEFAULT,'2013-10公司整体预测结果','xxxxxxxxxxxxxxxxxxxx','2013-10',DEFAULT,1,56,567,'整体预测','王二毛'),
(DEFAULT,'2013-10公司整体预测结果','xxxxxxxxxxxxxxxxxxxx','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2013-09公司整体预测结果','xxxxxxxxxxxxxxxxxxxx','2013-09',DEFAULT,1,50,56,'整体预测','王二毛'),
(DEFAULT,'2013-09公司整体预测结果','xxxxxxxxxxxxxxxxxxxx','2013-09',DEFAULT,3,56,800,'部门预测','王二毛');
#销售绩效
CREATE TABLE Achievement(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userId INT NOT NULL,
	deptId INT NOT NULL,#部门id
	grade INT NOT NULL DEFAULT 0,#等级  系统自动根据转账什么的来判断等级的
	lastUpdateTime TIMESTAMP DEFAULT NOW()NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	remark VARCHAR(50)
)CHARSET=utf8;
ALTER TABLE Achievement ADD CONSTRAINT `Achievement_deptId` FOREIGN KEY(`deptId`) REFERENCES Dept(`id`);
ALTER TABLE Achievement ADD CONSTRAINT `Achievement_userId` FOREIGN KEY(`userId`) REFERENCES `User`(`id`);
INSERT INTO Achievement(`id`,`userId`,`deptId`,`grade`,`lastUpdateTime`,`createdBy`,`remark`)
VALUES(DEFAULT,1,1,2,DEFAULT,'张三',''),
(DEFAULT,2,1,0,DEFAULT,'张三',''),
(DEFAULT,3,1,1,DEFAULT,'张三',''),
(DEFAULT,4,1,DEFAULT,DEFAULT,'张三',''),
(DEFAULT,5,2,3,DEFAULT,'张三',''),
(DEFAULT,6,2,-1,DEFAULT,'张三','');


#联系人管理
CREATE TABLE Contacts(
	id INT PRIMARY KEY AUTO_INCREMENT,
	`code` VARCHAR(50) NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	birthday TIMESTAMP NOT NULL,
	sex VARCHAR(50) NOT NULL,
	phone VARCHAR(50) NOT NULL,
	addressPhone VARCHAR(50) NOT NULL,#家庭电话
	address VARCHAR(200) NOT NULL,
	remark VARCHAR(50)
)CHARSET=utf8;
INSERT INTO Contacts(`id`,`code`,`name`,`birthday`,`sex`,`phone`,`addressPhone`,`address`,`remark`)
VALUES(DEFAULT,'2013112901','安和平','2013-12-12','男','13028803277','0660-6763114','xxxx',''),
(DEFAULT,'2013112902','卜先生','2012-12-12','男','13028803278','0660-6763114','xxxx',''),
(DEFAULT,'2013112903','陈鹏','2011-12-12','男','13028803274','0660-6763114','xxxx',''),
(DEFAULT,'2013112904','陈女士','2010-12-12','女','13028803272','0660-6763114','xxxx',''),
(DEFAULT,'2013112905','仇鹏涛','2009-12-12','男','13028803271','0660-6763114','xxxx',''),
(DEFAULT,'2013112906','安和平','2018-12-12','男','13028803276','0660-6763114','xxxx','');
