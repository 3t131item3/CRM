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
(DEFAULT,'1002','销售经理',DEFAULT,'2018-2-25','系统管理员',NULL,2),
(DEFAULT,'1003','销售总监',DEFAULT,'2018-2-25','系统管理员',NULL,2),
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
(DEFAULT,'lisi','李四','202cb962ac59075b964b07152d234b70',1,'15455667788',NOW(),NOW(),'销售经理',1,1,2),
(DEFAULT,'wangwu','王五','202cb962ac59075b964b07152d234b70',0,'18455667788',NOW(),NOW(),'销售总监',1,1,2),
(DEFAULT,'xiaomao','小毛','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'销售代表',1,1,2),
(DEFAULT,'xiaoli','小丽','202cb962ac59075b964b07152d234b70',1,'16455667788',NOW(),NOW(),'财务管理',1,1,3);
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







