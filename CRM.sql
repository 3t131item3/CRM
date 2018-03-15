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
VALUES(DEFAULT,''1001'',''综合部'',NOW(),''尚鸿运'',''综合部'',NULL)
,(DEFAULT,''1002'',''总经办'',NOW(),''尚鸿运'',''总经办'',NULL)
,(DEFAULT,''1003'',''业务一部'',NOW(),''尚鸿运'',''业务一部'',NULL)
,(DEFAULT,''1004'',''业务二部'',NOW(),''尚鸿运'',''业务二部'',NULL)
,(DEFAULT,''1005'',''市场发展部'',NOW(),''尚鸿运'',''市场发展部'',NULL)
,(DEFAULT,''1006'',''人事部'',NOW(),''尚鸿运'',''人事部'',NULL)
,(DEFAULT,''1007'',''开发部'',NOW(),''尚鸿运'',''开发部'',NULL)
,(DEFAULT,''1008'',''财务部'',NOW(),''尚鸿运'',''财务部'',NULL);
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
VALUES(DEFAULT,''1001'',''系统管理员'',DEFAULT,''2018-2-25'',''尚鸿运'',NULL,1),
(DEFAULT,''1002'',''销售总监'',DEFAULT,''2018-2-25'',''尚鸿运'',NULL,2),
(DEFAULT,''1003'',''销售经理'',DEFAULT,''2018-2-25'',''尚鸿运'',NULL,2),
(DEFAULT,''1004'',''销售代表'',DEFAULT,''2018-2-25'',''尚鸿运'',NULL,2);
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
VALUES(DEFAULT,''shanghongyun'',''尚鸿运'',''202cb962ac59075b964b07152d234b70'',0,''13455667788'',NOW(),NOW(),''尚鸿运'',1,1,1),
(DEFAULT,''lisi'',''韩露'',''202cb962ac59075b964b07152d234b70'',1,''15455667788'',NOW(),NOW(),''尚鸿运'',1,2,2),
(DEFAULT,''jianghonglin'',''蒋红林'',''202cb962ac59075b964b07152d234b70'',0,''18455667788'',NOW(),NOW(),''尚鸿运'',1,3,2),
 #以下是销售代表
(DEFAULT,''ermao'',''王二毛'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''sanmao'',''王三毛'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,3),
(DEFAULT,''simao'',''王四毛'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,4),
(DEFAULT,''laowu'',''王五毛'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,5),
(DEFAULT,''xiaoliang'',''小亮'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaokang'',''小康'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaoming'',''小明'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,4),
(DEFAULT,''xiaoxi'',''小溪'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaohong'',''小红'',''202cb962ac59075b964b07152d234b70'',1,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,1),
(DEFAULT,''xiaoji'',''小鸡'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaoqian'',''小钱'',''202cb962ac59075b964b07152d234b70'',1,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaozhang'',''小张'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,3),
(DEFAULT,''xiaolin'',''小琳'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaowen'',''小文'',''202cb962ac59075b964b07152d234b70'',1,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaoli'',''小李'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,5),
(DEFAULT,''xiaoji'',''小记'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,7),
(DEFAULT,''xiaomao'',''小毛'',''202cb962ac59075b964b07152d234b70'',1,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaojing'',''小京'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaoji'',''小即'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaokao'',''小考'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaojie'',''小杰'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,7),
(DEFAULT,''xiaofa'',''小发'',''202cb962ac59075b964b07152d234b70'',1,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaofa'',''小伐'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaofan'',''小饭'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,4),
(DEFAULT,''xiaogao'',''小高'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,6),
(DEFAULT,''xiaofu'',''小福'',''202cb962ac59075b964b07152d234b70'',1,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaofei'',''小飞'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaogui'',''小规'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,3),
(DEFAULT,''xiaofan'',''小翻'',''202cb962ac59075b964b07152d234b70'',1,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaokai'',''小开'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaohuan'',''小换'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,4),
(DEFAULT,''xiaoou'',''小喔'',''202cb962ac59075b964b07152d234b70'',1,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaoqin'',''小亲'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaolian'',''小恋'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaoliu'',''小流'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,2),
(DEFAULT,''xiaopao'',''小跑'',''202cb962ac59075b964b07152d234b70'',0,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,3),
(DEFAULT,''xiaoshunzi'',''小顺子'',''202cb962ac59075b964b07152d234b70'',1,''17455667788'',NOW(),NOW(),''尚鸿运'',1,4,3);
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
VALUES(DEFAULT,''1001'',''2014年公司年会安排'',''部门公告'',NOW(),''张三'',''公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作。''),
(DEFAULT,''1002'',''2014年差旅费报销通知'',''通知'',NOW(),''小毛'',''公司将于2014年1月1日起实施新的国内差旅''),
(DEFAULT,''1003'',''第三季度公司优秀员工评选结果'',''全体公告'',NOW(),''小丽'',''公司将于2014年1月1日起实施新的国内差旅''),
(DEFAULT,''1002'',''2014年差旅费报销通知'',''通知'',NOW(),''小毛'',''公司将于2014年1月1日起实施新的国内差旅''),
(DEFAULT,''1004'',''11月11日不网购有奖通知'',''行政公告'',NOW(),''李四'',''为了端正公司日常办公秩序，特通知如下：'');

#销售计划
CREATE TABLE Plan(
	id INT PRIMARY KEY AUTO_INCREMENT,
	`code` VARCHAR(50) NOT NULL,
	`userName` VARCHAR(50) NOT NULL,
	`month` VARCHAR(50) NOT NULL,#月份
	`status` VARCHAR(50) DEFAULT ''新创建'' NOT NULL,#状态
	planContent VARCHAR(500) NOT NULL,#计划内容
	lastUpdateTime TIMESTAMP DEFAULT NOW()NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50)#待处理人，关联部门 找和他相同部门的销售经理
)CHARSET=utf8;
ALTER TABLE Plan ADD CONSTRAINT `Plan_userId` FOREIGN KEY(`userId`) REFERENCES `User`(`id`);
INSERT INTO Plan(`id`,`code`,`userName`,`month`,`status`,`planContent`,`lastUpdateTime`,createdBy,nextHanlder)
VALUES(DEFAULT,''LY201311'',''王四毛'',''2013-10'',DEFAULT,''公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作。'',DEFAULT,''张三'',''''),
(DEFAULT,''LY201311'',''王四毛'',''2013-09'',DEFAULT,''公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作2。'',DEFAULT,''张三'',''''),
(DEFAULT,''LY201311'',''王四毛'',''2013-04'',''已提交'',''公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作3。'',DEFAULT,''张三'',''王五''),
(DEFAULT,''LY201311'',''王四毛'',''2013-05'',''已通过'',''公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作4。'',DEFAULT,''张三'',''''),
(DEFAULT,''LY201311'',''王四毛'',''2013-06'',''已提交'',''公司定于2013年12月20日举行公司年会，请各部门提前做好相关准备工作5。'',DEFAULT,''张三'',''王五'');
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
VALUES(DEFAULT,''2013-10公司整体预测结果'',''xxxxxxxxxxxxxxxxxxxx'',''2013-10'',DEFAULT,1,56,567,''整体预测'',''王二毛''),
(DEFAULT,''2013-10公司整体预测结果'',''xxxxxxxxxxxxxxxxxxxx'',''2013-10'',DEFAULT,2,56,568,''部门预测'',''王二毛''),
(DEFAULT,''2013-09公司整体预测结果'',''xxxxxxxxxxxxxxxxxxxx'',''2013-09'',DEFAULT,1,50,56,''整体预测'',''王二毛''),
(DEFAULT,''2013-09公司整体预测结果'',''xxxxxxxxxxxxxxxxxxxx'',''2013-09'',DEFAULT,3,56,800,''部门预测'',''王二毛'');
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
VALUES(DEFAULT,1,1,2,DEFAULT,''张三'',''''),
(DEFAULT,2,1,0,DEFAULT,''张三'',''''),
(DEFAULT,3,1,1,DEFAULT,''张三'',''''),
(DEFAULT,4,1,DEFAULT,DEFAULT,''张三'',''''),
(DEFAULT,5,2,3,DEFAULT,''张三'',''''),
(DEFAULT,6,2,-1,DEFAULT,''张三'','''');


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
VALUES(DEFAULT,''2013112901'',''安和平'',''2013-12-12'',''男'',''13028803277'',''0660-6763114'',''xxxx'',''''),
(DEFAULT,''2013112902'',''卜先生'',''2012-12-12'',''男'',''13028803278'',''0660-6763114'',''xxxx'',''''),
(DEFAULT,''2013112903'',''陈鹏'',''2011-12-12'',''男'',''13028803274'',''0660-6763114'',''xxxx'',''''),
(DEFAULT,''2013112904'',''陈女士'',''2010-12-12'',''女'',''13028803272'',''0660-6763114'',''xxxx'',''''),
(DEFAULT,''2013112905'',''仇鹏涛'',''2009-12-12'',''男'',''13028803271'',''0660-6763114'',''xxxx'',''''),
(DEFAULT,''2013112906'',''安和平'',''2018-12-12'',''男'',''13028803276'',''0660-6763114'',''xxxx'','''');

#客户发展计划和客户关怀不要了
#客户资源管理 分配状态不要了
CREATE TABLE CustomerResource(
	id INT PRIMARY KEY AUTO_INCREMENT,
	customerCode VARCHAR(50) NOT NULL,
	customerName VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	address VARCHAR(200),
	`type` VARCHAR(50) NOT NULL,
	`status` VARCHAR(50) NOT NULL, #客户状态
	creationTime TIMESTAMP DEFAULT NOW()NOT NULL,#注册时间
	createdBy VARCHAR(50) NOT NULL,#录入人
	phone VARCHAR(50),
	officePhone VARCHAR(50),
	addressPhone VARCHAR(50),#家庭电话
	remark VARCHAR(200)
)CHARSET=utf8;
INSERT INTO CustomerResource(`id`,`customerCode`,`customerName`,`sex`,`email`,`address`,`type`,`status`,`creationTime`,createdBy,phone,officePhone,addressPhone,remark)
VALUES(DEFAULT,''2013112901'',''安和平'',''男'',''1508549427@qq.com'',''xxxxxxxxx'',''普通客户'',''正常'',DEFAULT,''张三'',''13028803277'',''0660-6763114'',''0660-6763114'',''xxxx''),
(DEFAULT,''2013112901'',''安和平2'',''男'',''1508549427@qq.com'',''xxxxxxxxx'',''普通客户'',''正常'',DEFAULT,''张三'',''13028803277'',''0660-6763114'',''0660-6763114'',''xxxx''),
(DEFAULT,''2013112901'',''小花'',''女'',''1508549427@qq.com'',''xxxxxxxxx'',''VIP客户'',''正常'',DEFAULT,''张三'',''13028803277'',''0660-6763114'',''0660-6763114'',''xxxx''),
(DEFAULT,''2013112901'',''安和平4'',''男'',''1508549427@qq.com'',''xxxxxxxxx'',''普通客户'',''正常'',DEFAULT,''张三'',''13028803277'',''0660-6763114'',''0660-6763114'',''xxxx''),
(DEFAULT,''2013112901'',''安和平5'',''女'',''1508549427@qq.com'',''xxxxxxxxx'',''普通客户'',''已流失'',DEFAULT,''张三'',''13028803278'',''0660-6763114'',''0660-6763114'',''xxxx''),
(DEFAULT,''2013112901'',''安和平6'',''男'',''1508549427@qq.com'',''xxxxxxxxx'',''普通客户'',''正常'',DEFAULT,''张三'',''13028803277'',''0660-6763114'',''0660-6763114'',''xxxx'');
#客户满意度管理
CREATE TABLE CustomerSatisfaction(
	id INT PRIMARY KEY AUTO_INCREMENT,
	customerCode VARCHAR(50) NOT NULL,
	customerName VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	`type` VARCHAR(50) NOT NULL,#客户类型
	 creationTime TIMESTAMP DEFAULT NOW()NOT NULL,#调查时间
	  `status` VARCHAR(50) NOT NULL, #客户状态
	 quality VARCHAR(50) NOT NULL, #质量满意度
	 service VARCHAR(50) NOT NULL,#服务满意度
	 cost VARCHAR(50) NOT NULL, #性价比满意度
	 `all` VARCHAR(50) NOT NULL,#总满意度
	 voltar VARCHAR(200)#客户反馈
)CHARSET=utf8;
INSERT INTO CustomerSatisfaction(`id`,`customerCode`,customerName,`sex`,`type`,`creationTime`,`status`,`quality`,service,cost,`all`,voltar)
VALUES(DEFAULT,''2013112902'',''廖昌勇'',''男'',''普通客户'',DEFAULT,''正常'',''90%'',''92%'',''88%'',''88%'',''xx''),
(DEFAULT,''2013112903'',''王翔宇'',''男'',''VIP客户'',DEFAULT,''正常'',''90%'',''92%'',''88%'',''88%'',''xx''),
(DEFAULT,''2013112904'',''廖昌勇'',''男'',''普通客户'',DEFAULT,''已流失'',''90%'',''92%'',''89%'',''88%'',''xx''),
(DEFAULT,''2013112905'',''曾未来'',''女'',''普通客户'',DEFAULT,''正常'',''96%'',''92%'',''88%'',''80%'',''xx''),
(DEFAULT,''2013112906'',''吴向本'',''男'',''VIP客户'',DEFAULT,''正常'',''95%'',''92%'',''88%'',''48%'',''xx'');

#这两个查看就随便给点信息
#客户价值管理
CREATE TABLE CustomerVaule(
	id INT PRIMARY KEY AUTO_INCREMENT,
	customerName VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	`type` VARCHAR(50) NOT NULL,
	 number INT DEFAULT 1 NOT NULL, #消费次数
	 money FLOAT NOT NULL,
	 createdBy VARCHAR(50) NOT NULL#操作人
)CHARSET=utf8;
INSERT INTO CustomerVaule(`id`,`customerName`,`sex`,`type`,`number`,`money`,`createdBy`)
VALUES(DEFAULT,''廖昌勇'',''男'',''普通客户'',2,1.5,''李四''),
(DEFAULT,''王翔宇'',''男'',''VIP客户'',6,1.5,''李四''),
(DEFAULT,''Harry·Shaw'',''女'',''普通客户'',2,5,''李四''),
(DEFAULT,''曾未来'',''男'',''普通客户'',1,1.5,''王二毛''),
(DEFAULT,''廖昌勇'',''男'',''普通客户'',1,1.6,''李四'');
#客户信誉度管理
CREATE TABLE CustomerReputation(
	id INT PRIMARY KEY AUTO_INCREMENT,
	customerName VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	`type` VARCHAR(50) NOT NULL,
	 number INT DEFAULT 1 NOT NULL, #消费次数
	 grade VARCHAR(50) NOT NULL
)CHARSET=utf8;
INSERT INTO CustomerReputation(`id`,`customerName`,`sex`,`type`,`number`,grade)
VALUES(DEFAULT,''廖昌勇'',''男'',''普通客户'',2,''A''),
(DEFAULT,''王翔宇'',''男'',''VIP客户'',6,''A''),
(DEFAULT,''Harry·Shaw'',''女'',''普通客户'',3,''A''),
(DEFAULT,''曾未来'',''男'',''普通客户'',1,''A''),
(DEFAULT,''廖昌勇'',''男'',''普通客户'',1,''B'');

#合同创建
CREATE TABLE ContractCreate(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userName VARCHAR(50) NOT NULL,
	contractName VARCHAR(100) NOT NULL,
	contractType VARCHAR(50) NOT NULL,
	contractMoney FLOAT NOT NULL,
	contractStatus VARCHAR(50) DEFAULT ''已创建'' NOT NULL,
	lastUpdateTime TIMESTAMP DEFAULT NOW()NOT NULL,#最后修改时间
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	firstParty VARCHAR(50), #甲方
	secondParty VARCHAR(50), #乙方
	firstBusinessNumber VARCHAR(100), #甲方营业许可证号
	secondBusinessNumber VARCHAR(100), #乙方营业许可证号
	ContractContent VARCHAR(300), #合同内容
	remark VARCHAR(200)#备注
)CHARSET=utf8;
INSERT INTO ContractCreate(`id`,userName,`contractName`,`contractType`,`contractMoney`,`contractStatus`,`lastUpdateTime`,`nextHanlder`,`firstParty`,`secondParty`,firstBusinessNumber,secondBusinessNumber,ContractContent,remark)
VALUES(DEFAULT,''王四毛'',''厦门福祥公司明洞设备销售合同'',''销售合同'',117800.00,''待审核'',DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''''),
(DEFAULT,''王四毛'',''山东临沂泰兴公司离心机销售合同'',''销售合同'',117800.00,DEFAULT,DEFAULT,'''',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''''),
(DEFAULT,''王四毛'',''浙江宏昂公司离心机销售合同'',''销售合同'',117800.00,''待审核'',DEFAULT,''李四'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''''),
(DEFAULT,''王四毛'',''四川传福集团设备使用培训合同'',''技术合同'',117800.00,''已审核'',DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''''),
(DEFAULT,''王四毛'',''厦门福祥公司明洞设备销售合同'',''销售合同'',117800.00,''待审核'',DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''''),
(DEFAULT,''王四毛'',''厦门福祥公司明洞设备运输附加合同'',''运输合同'',117800.00,''已执行'',DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '','''');
#合同审核
CREATE TABLE ContractExamine(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userName VARCHAR(50) NOT NULL,
	contractName VARCHAR(100) NOT NULL,
	contractType VARCHAR(50) NOT NULL,
	contractMoney FLOAT NOT NULL,
	contractStatus VARCHAR(50) DEFAULT ''已创建'' NOT NULL,
	creationTime TIMESTAMP DEFAULT NOW()NOT NULL,#注册时间
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	firstParty VARCHAR(50), #甲方
	secondParty VARCHAR(50), #乙方
	firstBusinessNumber VARCHAR(100), #甲方营业许可证号
	secondBusinessNumber VARCHAR(100), #乙方营业许可证号
	ContractContent VARCHAR(200), #合同内容
	createdBy VARCHAR(50) NOT NULL,#操作人
	examine VARCHAR(200)#审批意见
)CHARSET=utf8;
INSERT INTO ContractExamine(`id`,userName,`contractName`,`contractType`,`contractMoney`,`contractStatus`,`creationTime`,`nextHanlder`,`firstParty`,`secondParty`,firstBusinessNumber,secondBusinessNumber,ContractContent,createdBy,examine)
VALUES(DEFAULT,''王四毛'',''山东临沂泰兴公司离心机销售合同'',''销售合同'',117800.00,DEFAULT,DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''王四毛'',''同意''),
(DEFAULT,''王四毛'',''浙江宏昂公司离心机销售合同'',''销售合同'',117800.00,''待审核'',DEFAULT,''李四'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''王四毛'',''同意''),
(DEFAULT,''王四毛'',''四川传福集团设备使用培训合同'',''技术合同'',117800.00,''已审核'',DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''王四毛'',''同意''),
(DEFAULT,''王四毛'',''厦门福祥公司明洞设备销售合同'',''销售合同'',117800.00,''待审核'',DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''王四毛'',''拒绝''),
(DEFAULT,''王四毛'',''厦门福祥公司明洞设备运输附加合同'',''运输合同'',117800.00,''已执行'',DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''王四毛'',''拒绝'');
UPDATE ContractExamine SET userName=''xx'' WHERE id=1
SELECT * FROM ContractExamine
#合同管理
CREATE TABLE ContractManage(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userName VARCHAR(50) NOT NULL,
	contractName VARCHAR(100) NOT NULL,
	contractType VARCHAR(50) NOT NULL,
	contractMoney FLOAT NOT NULL,
	contractStatus VARCHAR(50) DEFAULT ''已创建'' NOT NULL,
	creationTime TIMESTAMP DEFAULT NOW()NOT NULL,#注册时间
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	firstParty VARCHAR(50), #甲方
	secondParty VARCHAR(50), #乙方
	firstBusinessNumber VARCHAR(100), #甲方营业许可证号
	secondBusinessNumber VARCHAR(100), #乙方营业许可证号
	ContractContent VARCHAR(300), #合同内容
	remark VARCHAR(200),#备注
	createdBy VARCHAR(50) NOT NULL,#操作人
	cause VARCHAR(200) #原因
)CHARSET=utf8;
INSERT INTO ContractManage(`id`,userName,`contractName`,`contractType`,`contractMoney`,`contractStatus`,`creationTime`,`nextHanlder`,`firstParty`,`secondParty`,firstBusinessNumber,secondBusinessNumber,ContractContent,remark,createdBy,cause)
VALUES(DEFAULT,''王四毛'',''山东临沂泰兴公司离心机销售合同'',''销售合同'',117800.00,DEFAULT,DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''xx'',''王四毛'',''该合同于2013年11月30日与客户正式签订，开始执行合同。''),
(DEFAULT,''王四毛'',''浙江宏昂公司离心机销售合同'',''销售合同'',117800.00,''待审核'',DEFAULT,''李四'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''xx'',''王四毛'',''由于客户方原因，原条款中第四项第2条约定内容发生改变，导致该合同没有办法继续执行，需做合同变更。''),
(DEFAULT,''王四毛'',''四川传福集团设备使用培训合同'',''技术合同'',117800.00,''已审核'',DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''xx'',''王四毛'',''由于我方货源问题，无法履行该合同的后续条款，因此经与客户方协商后，对该合同进行合同转让。''),
(DEFAULT,''王四毛'',''厦门福祥公司明洞设备销售合同'',''销售合同'',117800.00,''待审核'',DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''xx'',''王四毛'',''由于客户方原因造成合同实施条件不成立，经甲乙双方协商决定，解除该合同。''),
(DEFAULT,''王四毛'',''厦门福祥公司明洞设备运输附加合同'',''运输合同'',117800.00,''已执行'',DEFAULT,''王五'',''山东临沂泰兴公司'',''北京急速科技'',''鲁No.0569'',''京B2-20050088'',''经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     '',''xx'',''王四毛'',''xx'');

#服务创建 销售代表创建，销售经理对已提交的服务进行分配
CREATE TABLE ServiceCreate(
	id INT PRIMARY KEY AUTO_INCREMENT,
	serviceName VARCHAR(50) NOT NULL,
	serviceType VARCHAR(100) NOT NULL,
	serviceStatus VARCHAR(50) DEFAULT ''新创建'' NOT NULL,
	lastUpdateTime TIMESTAMP DEFAULT NOW()NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	customerName VARCHAR(50) NOT NULL, #客户名字
	customerPhone VARCHAR(50) NOT NULL,
	serviceConcent VARCHAR(200) NOT NULL,
	remark VARCHAR(200)#备注
)CHARSET=utf8;
INSERT INTO ServiceCreate(`id`,serviceName,`serviceType`,`serviceStatus`,`lastUpdateTime`,`createdBy`,`nextHanlder`,`customerName`,`customerPhone`,`serviceConcent`,remark)
VALUES(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''新创建'',DEFAULT,''王二毛'','''',''李曦'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''xxxxx''),
(DEFAULT,''山东客户离心器安装服务'',''售前服务'',''已提交'',DEFAULT,''王三毛'',''王怡'',''李曦2'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''xxxxx''),
(DEFAULT,''云南客户设备故障投诉服务'',''投诉服务'',''新创建'',DEFAULT,''王四毛'','''',''李曦3'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''xxxxx''),
(DEFAULT,''北京客户明洞设备安装服务'',''售后服务'',''已分配'',DEFAULT,''王二毛'',''李彪'',''李曦4'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''xxxxx''),
(DEFAULT,''北京客户设备升级咨询服务'',''售前服务'',''已反馈'',DEFAULT,''王二毛'',''王五'',''李曦5'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''xxxxx''),
(DEFAULT,''北京客户设备降级咨询服务'',''咨询服务'',''已处理'',DEFAULT,''王五毛'',''张静'',''李曦6'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''xxxxx'');

#服务分配
#销售经理对状态为“已提交”的服务单据进行分配，指定销售代表处理该单据。除了“新创建”以外的其他状态可以被查看。
CREATE TABLE ServiceAllot(
	id INT PRIMARY KEY AUTO_INCREMENT,
	serviceName VARCHAR(50) NOT NULL,
	serviceType VARCHAR(100) NOT NULL,
	serviceStatus VARCHAR(50) DEFAULT ''新创建'' NOT NULL,
	lastUpdateTime TIMESTAMP DEFAULT NOW()NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	customerName VARCHAR(50) NOT NULL, #客户名字
	customerPhone VARCHAR(50) NOT NULL,
	serviceConcent VARCHAR(200) NOT NULL,
	nextAllot VARCHAR(50)#分配给哪些销售代表做
)CHARSET=utf8;
INSERT INTO ServiceAllot(`id`,serviceName,`serviceType`,`serviceStatus`,`lastUpdateTime`,`createdBy`,`nextHanlder`,`customerName`,`customerPhone`,`serviceConcent`,nextAllot)
VALUES(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已提交'',DEFAULT,''王二毛'',''王五'',''李曦'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''王三毛''),
(DEFAULT,''山东客户离心器安装服务'',''售前服务'',''已分配'',DEFAULT,''王三毛'',''王怡'',''李曦2'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''王三毛''),
(DEFAULT,''云南客户设备故障投诉服务'',''投诉服务'',''已提交'',DEFAULT,''王四毛'',''王五'',''李曦3'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''王四毛''),
(DEFAULT,''北京客户明洞设备安装服务'',''售后服务'',''已分配'',DEFAULT,''王二毛'',''李彪'',''李曦4'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''王三毛''),
(DEFAULT,''北京客户设备升级咨询服务'',''售前服务'',''已反馈'',DEFAULT,''王二毛'',''王五'',''李曦5'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''王三毛''),
(DEFAULT,''北京客户设备降级咨询服务'',''咨询服务'',''已处理'',DEFAULT,''王五毛'',''张静'',''李曦6'',''13815368899'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''王三毛'');

#服务处理
#状态全都是已分配的，然后去处理
CREATE TABLE ServiceDispose(
	id INT PRIMARY KEY AUTO_INCREMENT,
	serviceName VARCHAR(50) NOT NULL,
	serviceType VARCHAR(100) NOT NULL,
	serviceStatus VARCHAR(50) DEFAULT ''新创建'' NOT NULL,
	createTime TIMESTAMP DEFAULT NOW() NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	customerPhone VARCHAR(50) NOT NULL,
	serviceConcent VARCHAR(200) NOT NULL,
	disposeResult VARCHAR(50),#处理结果
	disposeRemark VARCHAR(200)
)CHARSET=utf8;
INSERT INTO ServiceDispose(`id`,serviceName,`serviceType`,`serviceStatus`,`createTime`,`createdBy`,`nextHanlder`,`customerPhone`,`serviceConcent`,disposeResult,disposeRemark)
VALUES(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已分配'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已处理'',''已联系售后人员准备上门安装，去之前会再次联系客户。''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已分配'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已处理'',''已联系售后人员准备上门安装，去之前会再次联系客户。''),
(DEFAULT,''山东客户离心器安装服务'',''售后服务'',''已分配'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已处理'',''已联系售后人员准备上门安装，去之前会再次联系客户。''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已分配'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已处理'',''已联系售后人员准备上门安装，去之前会再次联系客户。''),
(DEFAULT,''云南客户设备故障投诉服务'',''售后服务'',''已分配'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已处理'',''已联系售后人员准备上门安装，去之前会再次联系客户。''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已分配'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已处理'',''已联系售后人员准备上门安装，去之前会再次联系客户。''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已分配'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已处理'',''已联系售后人员准备上门安装，去之前会再次联系客户。'');
#服务反馈
#状态全都是已处理的，然后去看是否有反馈
CREATE TABLE ServiceBack(
	id INT PRIMARY KEY AUTO_INCREMENT,
	serviceName VARCHAR(50) NOT NULL,
	serviceType VARCHAR(100) NOT NULL,
	serviceStatus VARCHAR(50) DEFAULT ''新创建'' NOT NULL,
	createTime TIMESTAMP DEFAULT NOW() NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	customerPhone VARCHAR(50) NOT NULL,
	serviceConcent VARCHAR(200) NOT NULL,
	backResult VARCHAR(50),#反馈结果
	backRemark VARCHAR(200)
)CHARSET=utf8;
INSERT INTO ServiceBack(`id`,serviceName,`serviceType`,`serviceStatus`,`createTime`,`createdBy`,`nextHanlder`,`customerPhone`,`serviceConcent`,backResult,backRemark)
VALUES(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已处理'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已反馈'',''已向客户反馈。''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已处理'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''未反馈'',''未向客户反馈。''),
(DEFAULT,''山东客户离心器安装服务'',''售后服务'',''已处理'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已反馈'',''已向客户反馈。''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已处理'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已反馈'',''已向客户反馈。''),
(DEFAULT,''云南客户设备故障投诉服务'',''售后服务'',''已处理'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''未反馈'',''未向客户反馈。''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已处理'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已反馈'',''已向客户反馈。''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已处理'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''未反馈'',''未向客户反馈。'');

#服务归档
#状态全都是已反馈的，然后修改这个为归档就行
CREATE TABLE ServicePigeonhole(
	id INT PRIMARY KEY AUTO_INCREMENT,
	serviceName VARCHAR(50) NOT NULL,
	serviceType VARCHAR(100) NOT NULL,
	serviceStatus VARCHAR(50) DEFAULT ''新创建'' NOT NULL,
	createTime TIMESTAMP DEFAULT NOW() NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	customerPhone VARCHAR(50) NOT NULL,
	serviceConcent VARCHAR(200) NOT NULL,
	backResult VARCHAR(50),#处理结果
	backRemark VARCHAR(200),
	isPigeonhole VARCHAR(50)#是否归档
)CHARSET=utf8;
INSERT INTO ServicePigeonhole(`id`,serviceName,`serviceType`,`serviceStatus`,`createTime`,`createdBy`,`nextHanlder`,`customerPhone`,`serviceConcent`,backResult,backRemark,isPigeonhole)
VALUES(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已反馈'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已反馈'',''已向客户反馈。'',''已归档''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已反馈'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''未反馈'',''未向客户反馈。'',''未归档''),
(DEFAULT,''山东客户离心器安装服务'',''售后服务'',''已反馈'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已反馈'',''已向客户反馈。'',''已归档''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已反馈'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已反馈'',''已向客户反馈。'',''已归档''),
(DEFAULT,''云南客户设备故障投诉服务'',''售后服务'',''已反馈'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''未反馈'',''未向客户反馈。'',''未归档''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已反馈'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''已反馈'',''已向客户反馈。'',''未归档''),
(DEFAULT,''四川客户离心器售后服务'',''售后服务'',''已反馈'',DEFAULT,''王二毛'',''王五'',''李曦'',''四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。'',''未反馈'',''未向客户反馈。'',''未归档'');

#常见问题管理 销售代表记录
CREATE TABLE Problems(
	id INT PRIMARY KEY AUTO_INCREMENT,
	problemsTitle VARCHAR(50) NOT NULL, #问题名称
	serviceType VARCHAR(100) NOT NULL,
	createdBy VARCHAR(50) NOT NULL,#操作人
	lastUpdateTime TIMESTAMP DEFAULT NOW()NOT NULL,#最后修改时间
	responseContent VARCHAR(200),#答复内容
	remark VARCHAR(50)#备注
)CHARSET=utf8;

INSERT INTO Problems(`id`,problemsTitle,`serviceType`,`createdBy`,`lastUpdateTime`,`responseContent`,`remark`)
VALUES(DEFAULT,''离心器初速过慢什么问题'',''售后问题'',''王二毛'',DEFAULT,''1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；'',''''),
(DEFAULT,''安装离心器需要哪些条件'',''售后问题'',''王二毛'',DEFAULT,''1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；'',''''),
(DEFAULT,''ERS-2型冲击器总是需要二次启动'',''投诉问题'',''王二毛'',DEFAULT,''1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；'',''''),
(DEFAULT,''明洞设备安装后多久可以投入生产'',''售后问题'',''王二毛'',DEFAULT,''1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；'',''''),
(DEFAULT,''ERS-2型冲击器售价多少'',''售后问题'',''王二毛'',DEFAULT,''1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；'',''''),
(DEFAULT,''史蒂夫-霍金为啥死的'',''业务问题'',''王二毛'',DEFAULT,''1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；'',''''),
(DEFAULT,''史蒂夫-霍金为为啥这么可爱'',''业务问题'',''王二毛'',DEFAULT,''1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；'','''');