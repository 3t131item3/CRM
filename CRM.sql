﻿USE test;
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
VALUES(DEFAULT,'1001','综合部',NOW(),'尚鸿运','综合部',NULL)
,(DEFAULT,'1002','总经办',NOW(),'尚鸿运','总经办',NULL)
,(DEFAULT,'1003','业务一部',NOW(),'尚鸿运','业务一部',NULL)
,(DEFAULT,'1004','业务二部',NOW(),'尚鸿运','业务二部',NULL)
,(DEFAULT,'1005','市场发展部',NOW(),'尚鸿运','市场发展部',NULL)
,(DEFAULT,'1006','人事部',NOW(),'尚鸿运','人事部',NULL)
,(DEFAULT,'1007','开发部',NOW(),'尚鸿运','开发部',NULL);
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
VALUES(DEFAULT,'1001','系统管理员',DEFAULT,'2018-2-25','尚鸿运',NULL,1),
(DEFAULT,'1002','销售总监',DEFAULT,'2018-2-25','尚鸿运',NULL,2),
(DEFAULT,'1003','销售经理',DEFAULT,'2018-2-25','尚鸿运',NULL,2),
(DEFAULT,'1004','销售代表',DEFAULT,'2018-2-25','尚鸿运',NULL,2);
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
	roleId INT NOT NULL, #关联角色id
	deptId INT NOT NULL#关联部门id
)CHARSET=utf8;
ALTER TABLE `User` ADD CONSTRAINT `user_roleId` FOREIGN KEY(`roleId`) REFERENCES Role(`id`);
ALTER TABLE `User` ADD CONSTRAINT `user_deptId` FOREIGN KEY(`deptId`) REFERENCES Dept(`id`);
INSERT INTO `User`(`id`,`userCode`,`userName`,`userPassword`,`gender`,`phone`,`creationTime`,`lastLoginTime`,`createdBy`,`roleId`,`deptId`)
VALUES(DEFAULT,'shanghongyun','尚鸿运','202cb962ac59075b964b07152d234b70',0,'13455667788',NOW(),NOW(),'尚鸿运',1,1),
(DEFAULT,'hanlu','韩露','202cb962ac59075b964b07152d234b70',1,'15455667788',NOW(),NOW(),'尚鸿运',2,2),
(DEFAULT,'jianghonglin','蒋红林','202cb962ac59075b964b07152d234b70',0,'18455667788',NOW(),NOW(),'尚鸿运',3,2),
 #以下是销售代表
(DEFAULT,'wangermao','王二毛','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'wangsanmao','王三毛','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'wangsimao','王四毛','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'wanglaowu','王五毛','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoliang','小亮','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaokang','小康','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoming','小明','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoxi','小溪','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaohong','小红','202cb962ac59075b964b07152d234b70',1,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoji','小鸡','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoqian','小钱','202cb962ac59075b964b07152d234b70',1,'174556456788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaozhang','小张','202cb962ac59075b964b07152d234b70',0,'17445877788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaolin','小琳','202cb962ac59075b964b07152d234b70',0,'17455356488',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaowen','小文','202cb962ac59075b964b07152d234b70',1,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoli','小李','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoji','小记','202cb962ac59075b964b07152d234b70',0,'17412347788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaomao','小毛','202cb962ac59075b964b07152d234b70',1,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaojing','小京','202cb962ac59075b964b07152d234b70',0,'17455679988',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoji','小即','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaokao','小考','202cb962ac59075b964b07152d234b70',0,'17455788788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaojie','小杰','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaofa','小发','202cb962ac59075b964b07152d234b70',1,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaofa','小伐','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaofan','小饭','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaogao','小高','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaofu','小福','202cb962ac59075b964b07152d234b70',1,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaofei','小飞','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaogui','小规','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,3),
(DEFAULT,'xiaofan','小翻','202cb962ac59075b964b07152d234b70',1,'17457867788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaokai','小开','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaohuan','小换','202cb962ac59075b964b07152d234b70',0,'17454167788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoou','小喔','202cb962ac59075b964b07152d234b70',1,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoqin','小亲','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaolian','小恋','202cb962ac59075b964b07152d234b70',0,'17475667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaoliu','小流','202cb962ac59075b964b07152d234b70',0,'17455667788',NOW(),NOW(),'尚鸿运',4,2),
(DEFAULT,'xiaopao','小跑','202cb962ac59075b964b07152d234b70',0,'17455646788',NOW(),NOW(),'尚鸿运',4,3),
(DEFAULT,'xiaoshunzi','小顺子','202cb962ac59075b964b07152d234b70',1,'17454667788',NOW(),NOW(),'尚鸿运',4,3);

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
(DEFAULT,'1002','2014年差旅费报销通知','通知',NOW(),'小毛','公司将于2014年1月1日起实施新的国内差旅'),
(DEFAULT,'1004','11月11日不网购有奖通知','行政公告',NOW(),'李四','为了端正公司日常办公秩序，特通知如下：'),
(DEFAULT,'1005','2015年年报','通知',NOW(),'小宝','冠豪高新(600433)披露年报，公司2017年营收为20.6亿元，同比增长18%；净利为5279万元，同比下降51%。公司拟向全体股东每10股派送0.13元(含税)。'),
(DEFAULT,'1006','豫园股份(600655)披露年报，','全体公告',NOW(),'小丽','　公司2017年营收为171.11亿元，同比增长9.39%；净利为7亿元，同比增长46.24%。'),
(DEFAULT,'1007','四名股东','通知',NOW(),'小毛','四名股东拟合计减持不超8.43%股份'),
(DEFAULT,'1008','宏辉果蔬(603336)公告，','行政公告',NOW(),'李四','公司于去年11月25日披露持股5%以上股东陈雁升、'),
(DEFAULT,'1010','诚意药业(603811)公告','通知',NOW(),'小毛','公司全体解禁的董监高、部分其他股东等承诺：自3月15日起6个月内不减持'),
(DEFAULT,'1011','国投中鲁(600962)公告','全体公告',NOW(),'小丽','公司股票交易3月13日、14日和15日连续三个交易日内日收盘价格涨幅偏离值累计超过20%'),
(DEFAULT,'1012','亨通光电(600487)公告','通知',NOW(),'小毛','公司与安徽传矽共同合作设立科大亨芯，从事5G/6G通信芯片、毫米波及光电芯片、射频滤波器、高速光电器件、传感器及半导体材料的设计、研发、制造及销售'),
(DEFAULT,'1013','万华化学(600309)公告','行政公告',NOW(),'李四','公司原控股股东万华实业分立为万华实业集团有限公司(存续公司)和新设公司万华化工'),
(DEFAULT,'1014','2015年年报','通知',NOW(),'小宝','冠豪高新(600433)披露年报，公司2017年营收为20.6亿元，同比增长18%；净利为5279万元，同比下降51%。公司拟向全体股东每10股派送0.13元(含税)。'),
(DEFAULT,'1015','豫园股份(600655)披露年报，','全体公告',NOW(),'小丽','　公司2017年营收为171.11亿元，同比增长9.39%；净利为7亿元，同比增长46.24%。'),
(DEFAULT,'1016','四名股东','通知',NOW(),'小毛','四名股东拟合计减持不超8.43%股份'),
(DEFAULT,'1017','宏辉果蔬(603336)公告，','行政公告',NOW(),'李四','公司于去年11月25日披露持股5%以上股东陈雁升、'),
(DEFAULT,'1018','第三季度公司优秀员工评选结果','全体公告',NOW(),'小丽','公司将于2014年1月1日起实施新的国内差旅'),
(DEFAULT,'1019','2014年差旅费报销通知','通知',NOW(),'小毛','公司将于2014年1月1日起实施新的国内差旅'),
(DEFAULT,'1020','11月11日不网购有奖通知','行政公告',NOW(),'李四','为了端正公司日常办公秩序，特通知如下：'),
(DEFAULT,'1021','2015年年报','通知',NOW(),'小宝','冠豪高新(600433)披露年报，公司2017年营收为20.6亿元，同比增长18%；净利为5279万元，同比下降51%。公司拟向全体股东每10股派送0.13元(含税)。'),
(DEFAULT,'1022','豫园股份(600655)披露年报，','全体公告',NOW(),'小丽','　公司2017年营收为171.11亿元，同比增长9.39%；净利为7亿元，同比增长46.24%。'),
(DEFAULT,'1023','四名股东','通知',NOW(),'小毛','四名股东拟合计减持不超8.43%股份'),
(DEFAULT,'1024','宏辉果蔬(603336)公告，','行政公告',NOW(),'李四','公司于去年11月25日披露持股5%以上股东陈雁升、'),
(DEFAULT,'1025','诚意药业(603811)公告','通知',NOW(),'小毛','公司全体解禁的董监高、部分其他股东等承诺：自3月15日起6个月内不减持'),
(DEFAULT,'1026','国投中鲁(600962)公告','全体公告',NOW(),'小丽','公司股票交易3月13日、14日和15日连续三个交易日内日收盘价格涨幅偏离值累计超过20%'),
(DEFAULT,'1027','亨通光电(600487)公告','通知',NOW(),'小毛','公司与安徽传矽共同合作设立科大亨芯，从事5G/6G通信芯片、毫米波及光电芯片、射频滤波器、高速光电器件、传感器及半导体材料的设计、研发、制造及销售'),
(DEFAULT,'1028','万华化学(600309)公告','行政公告',NOW(),'李四','公司原控股股东万华实业分立为万华实业集团有限公司(存续公司)和新设公司万华化工'),
(DEFAULT,'1029','2015年年报','通知',NOW(),'小宝','冠豪高新(600433)披露年报，公司2017年营收为20.6亿元，同比增长18%；净利为5279万元，同比下降51%。公司拟向全体股东每10股派送0.13元(含税)。'),
(DEFAULT,'1030','豫园股份(600655)披露年报，','全体公告',NOW(),'小丽','　公司2017年营收为171.11亿元，同比增长9.39%；净利为7亿元，同比增长46.24%。'),
(DEFAULT,'1031','四名股东','通知',NOW(),'小毛','四名股东拟合计减持不超8.43%股份'),
(DEFAULT,'1032','宏辉果蔬(603336)公告，','行政公告',NOW(),'李四','公司于去年11月25日披露持股5%以上股东陈雁升、');

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
(DEFAULT,'LY201312','小琳','2013-09',DEFAULT,'.新产品的销售方式是指每人各自负责30家左右的店，进行调查、服务及销售指导、技术指导等，借此促进销售。对于一个新产品',DEFAULT,'张三',''),
(DEFAULT,'LY201313','小飞','2013-04','已提交','部门全体：5590元以上',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201314','王二毛','2013-05','已通过','每周或隔周做一次访问，借访问的机会督导、奖励销售，',DEFAULT,'张三',''),
(DEFAULT,'LY201315','小亲','2013-06','已通过','产品经理工作如何制定新产品销售计划',DEFAULT,'张三',''),
(DEFAULT,'LY201316','小文','2013-07','已提交','，公司没有自己的历史数据，销售人员也很难...',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201317','小开','2013-08','已通过','个人销售额：10000以上',DEFAULT,'张三',''),
(DEFAULT,'LY201318','小康','2013-10','已提交','将产品推销出去每家每户',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201319','小鸡','2013-11','已通过','实际的出货量决定产品的知名度，每一个产品都是一个强有力广告',DEFAULT,'张三',''),
(DEFAULT,'LY201320','小考','2013-12','已提交','世界经理人为您提供丰富、全面的商品销售计划书文章和知识，让您第一时间了解有关商品销售',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201321','小溪','2014-01','已提交','新产品的销售目标:****元以上. 基本方针: (一)本公司的业务机构,必须一直到所有人员都能精通其业务、人心安定、能有危机意识、 有效地活动时,业务机构才不再',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201322','小跑','2014-02','已提交','同时利用该产品建立起产品销售渠道;建[转载]再整理商业计划书 立公司产品营销计划规范、标',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201323','小顺子','2014-03','已通过','市场、产品、竞争、分销、环境 3.目标：销售、财务、增长、市场份额、利润...',DEFAULT,'张三',''),
(DEFAULT,'LY201324','小京','2014-04','已通过','所有的市场都有他一定的规律，市场的规律是可以用适时、适质、适量、适价的产品',DEFAULT,'张三',''),
(DEFAULT,'LY201325','小规','2014-05','已提交','基本背景：北京神州中联教育科技有限公司',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201326','王三毛','2014-06','已通过','世界经理人为您提供丰富、全面的产品营销计划书文章和知识，让您第一时间了解有关产品营销计划书的热门信息，更多产品营销计划书资讯尽在世界经理人',DEFAULT,'张三',''),
(DEFAULT,'LY201327','王四毛','2015-07','已提交','现代社会是一个销售的社会，我们每一个人都需要销售，我们每一个人都在从事销售。',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201328','小爸','2013-06','已提交','现代社会是一个销售的社会，我们每一个人都需要销售，我们每一个人都在从事销售。',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201329','小吗','2013-07','已通过','销售增长是推动任何企业发展的关键。通过精明的市场与销售运营技术和有效的人员管理的结合，任何企业在今年和以后都可以实现额外的增长',DEFAULT,'张三',''),
(DEFAULT,'LY201330','小凉','2013-08','已通过','销售决策体系的核心是：用业务绩效管理来减少销售计划与实际销售之间的差距。',DEFAULT,'张三',''),
(DEFAULT,'LY201331','小异','2013-10','已提交','虽然格式各不相同，但商业计划书一般都要涵盖文中所讲的十方面的内容。',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201332','小看','2013-11','已通过','有效的商业决策依赖于规划。一个重要的协助该计划的工具，是美国商业社区所指的商业计划书。',DEFAULT,'张三',''),
(DEFAULT,'LY201333','小黄','2013-12','已提交','商业计划书中的“七要”和“七不要”帮助你抓住重点，避免犯错。',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201334','小黎','2014-01','已提交','成交的关键在于判断理想的客户，既要找出客户的决策者，把销售做到决策层，又要关注小人物。',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201335','小章','2014-02','已通过','“数字货币”这四个字已经被各国的部长们摆在会议桌上研究了。',DEFAULT,'张三',''),
(DEFAULT,'LY201336','小有子','2014-03','已通过','“始终把顾客价值放在第一位”，“重视技术的持续投入”，“授权给各级员工”，期待中国的企业能从中得到启发。',DEFAULT,'张三',''),
(DEFAULT,'LY201337','小课','2014-04','已通过','在不确定的商业世界，越来越多的管理实践者尝试采取“分”的思想，倡导分享型领导。',DEFAULT,'张三',''),
(DEFAULT,'LY201338','小年','2014-05','已通过','为了让产品真正触动目标消费者的内心神经，从性能到外观，林伟彬都竭尽所能地做到超越同行标准。',DEFAULT,'张三',''),
(DEFAULT,'LY201339','王五毛','2014-06','已提交','在市场上依旧被高喊为新风口的物联网，如今发展的怎么样了？面对迅速发展的物联网，制造企业又该如何应对？',DEFAULT,'张三','蒋红林'),
(DEFAULT,'LY201340','王六毛','2015-07','已提交','要把握三项关键领导能力，即期望识别能力、优势创新能力和联盟协同能力。',DEFAULT,'张三','蒋红林');

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
INSERT INTO Forecast(`id`,`title`,result,`month`,`date`,`deptId`,`scale`,`customerNum`,`type`,createdBy)
VALUES(DEFAULT,'2013-10公司整体预测结果','营业额提高1%','2013-10',DEFAULT,1,56,567,'整体预测','张三'),
(DEFAULT,'2014-10公司整体预测结果','营业额提高2%','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2015-09公司整体预测结果','营业额提高3%','2013-09',DEFAULT,1,50,56,'整体预测','王二毛'),
(DEFAULT,'2016-09公司整体预测结果','营业额提高4%','2013-09',DEFAULT,3,56,800,'部门预测','王二毛'),
(DEFAULT,'2017-10公司整体预测结果','营业额提高5%','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2018-09公司整体预测结果','营业额提高6%','2013-09',DEFAULT,1,50,56,'整体预测','王二毛'),
(DEFAULT,'2019-09公司整体预测结果','营业额提高7%','2013-09',DEFAULT,3,56,800,'部门预测','王二毛'),
(DEFAULT,'2010-10公司整体预测结果','营业额提高8%','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2011-09公司整体预测结果','营业额提高9%','2013-09',DEFAULT,1,50,56,'整体预测','王二毛'),
(DEFAULT,'2012-09公司整体预测结果','营业额提高10%','2013-09',DEFAULT,3,56,800,'部门预测','王二毛'),
(DEFAULT,'2020-10公司整体预测结果','营业额提高11%','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2021-09公司整体预测结果','营业额提高12%','2013-09',DEFAULT,1,50,56,'整体预测','王二毛'),
(DEFAULT,'2022-09公司整体预测结果','营业额提高13%','2013-09',DEFAULT,3,56,800,'部门预测','王二毛'),
(DEFAULT,'2023-10公司整体预测结果','营业额提高14%','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2024-09公司整体预测结果','营业额提高15%','2013-09',DEFAULT,1,50,56,'整体预测','王二毛'),
(DEFAULT,'2025-09公司整体预测结果','营业额提高16%','2013-09',DEFAULT,3,56,800,'部门预测','王二毛'),
(DEFAULT,'2026-10公司整体预测结果','营业额提高17%','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2027-09公司整体预测结果','营业额提高18%','2013-09',DEFAULT,1,50,56,'整体预测','王二毛'),
(DEFAULT,'2028-09公司整体预测结果','营业额提高19%','2013-09',DEFAULT,3,56,800,'部门预测','王二毛'),
(DEFAULT,'2029-10公司整体预测结果','营业额提高20%','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2030-09公司整体预测结果','营业额提高21%','2013-09',DEFAULT,1,50,56,'整体预测','王二毛'),
(DEFAULT,'2031-09公司整体预测结果','营业额提高22%','2013-09',DEFAULT,3,56,800,'部门预测','王二毛'),
(DEFAULT,'2032-10公司整体预测结果','营业额提高23%','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2033-09公司整体预测结果','营业额提高24%','2013-09',DEFAULT,1,50,56,'整体预测','王二毛'),
(DEFAULT,'2034-09公司整体预测结果','营业额提高25%','2013-09',DEFAULT,3,56,800,'部门预测','王二毛'),
(DEFAULT,'2035-10公司整体预测结果','营业额提高26%','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2036-09公司整体预测结果','营业额提高27%','2013-09',DEFAULT,1,50,56,'整体预测','王二毛'),
(DEFAULT,'2037-09公司整体预测结果','营业额提高28%','2013-09',DEFAULT,3,56,800,'部门预测','王二毛'),
(DEFAULT,'2038-10公司整体预测结果','营业额提高29%','2013-10',DEFAULT,2,56,568,'部门预测','王二毛'),
(DEFAULT,'2039-09公司整体预测结果','营业额提高30%','2013-09',DEFAULT,1,50,56,'整体预测','王si毛'),
(DEFAULT,'2040-09公司整体预测结果','营业额提高31%','2013-09',DEFAULT,3,56,800,'部门预测','王三毛');
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
(DEFAULT,6,1,0,DEFAULT,'张三',''),
(DEFAULT,7,1,1,DEFAULT,'张三',''),
(DEFAULT,8,1,DEFAULT,DEFAULT,'张三',''),
(DEFAULT,9,2,3,DEFAULT,'张三',''),
(DEFAULT,10,1,0,DEFAULT,'张三',''),
(DEFAULT,11,1,1,DEFAULT,'张三',''),
(DEFAULT,12,1,DEFAULT,DEFAULT,'张三',''),
(DEFAULT,13,2,3,DEFAULT,'张三',''),
(DEFAULT,14,1,0,DEFAULT,'张三',''),
(DEFAULT,15,1,1,DEFAULT,'张三',''),
(DEFAULT,16,1,DEFAULT,DEFAULT,'张三',''),
(DEFAULT,17,2,3,DEFAULT,'张三',''),
(DEFAULT,18,1,0,DEFAULT,'张三',''),
(DEFAULT,19,1,1,DEFAULT,'张三',''),
(DEFAULT,20,1,DEFAULT,DEFAULT,'张三',''),
(DEFAULT,21,2,3,DEFAULT,'张三',''),
(DEFAULT,22,2,-1,DEFAULT,'张三',''),
(DEFAULT,23,1,1,DEFAULT,'张三',''),
(DEFAULT,24,1,DEFAULT,DEFAULT,'张三',''),
(DEFAULT,25,2,3,DEFAULT,'张三',''),
(DEFAULT,26,1,0,DEFAULT,'张三',''),
(DEFAULT,27,1,1,DEFAULT,'张三',''),
(DEFAULT,28,1,DEFAULT,DEFAULT,'张三',''),
(DEFAULT,29,2,3,DEFAULT,'张三',''),
(DEFAULT,30,2,-1,DEFAULT,'张三','');


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
(DEFAULT,'2013112902','卜先生','2012-12-12','男','13028803278','0660-6163114','xxxx',''),
(DEFAULT,'2013112903','陈鹏','2011-12-12','男','13028803274','0660-6263114','xxxx',''),
(DEFAULT,'2013112904','陈女士','2010-12-12','女','13028803272','0660-6363114','xxxx',''),
(DEFAULT,'2013112905','仇鹏涛','2009-12-12','男','13028803271','0660-6463114','xxxx',''),
(DEFAULT,'2013112906','顾德刚','2018-12-12','男','13028803276','0660-6563114','xxxx',''),
(DEFAULT,'2013112907','欧阳无敌','2009-12-12','男','13028803272','0660-6663114','xxxx',''),
(DEFAULT,'2013112908','欧阳锋','2009-12-12','男','13028803273','0660-6763114','xxxx',''),
(DEFAULT,'2013112909','陈小明','2009-12-12','男','13028803274','0660-6863114','xxxx',''),
(DEFAULT,'2013112910','王老五','2009-12-12','男','13028803275','0660-6963114','xxxx',''),
(DEFAULT,'2013112911','李淑梅','2009-12-12','女','13028803276','0660-6703114','xxxx',''),
(DEFAULT,'2013112912','陈明','2009-12-12','男','13028803279','0660-6713114','xxxx',''),
(DEFAULT,'2013112913','顾戴路','2009-12-12','男','13028803280','0660-6723114','xxxx',''),
(DEFAULT,'2013112914','张建军','2009-12-12','男','13028803281','0660-6733114','xxxx',''),
(DEFAULT,'2013112915','张国瑞','2009-12-12','男','13028803282','0660-6743114','xxxx',''),
(DEFAULT,'2013112916','李丽丽','2009-12-12','女','13028803283','0660-6753114','xxxx',''),
(DEFAULT,'2013112917','陈锦涛','2009-12-12','男','13028803284','0660-6763114','xxxx',''),
(DEFAULT,'2013112918','白枫','2009-12-12','男','13028803285','0660-6773114','xxxx',''),
(DEFAULT,'2013112919','杨钰莹','2009-12-12','女','13028803286','0660-6863114','xxxx',''),
(DEFAULT,'2013112920','刘志勇','2009-12-12','男','13028803287','0660-6963114','xxxx',''),
(DEFAULT,'2013112921','柳宗元','2009-12-12','男','13028803288','0660-675114','xxxx',''),
(DEFAULT,'2013112922','罗振宇','2009-12-12','男','13028803289','0660-6773114','xxxx',''),
(DEFAULT,'2013112923','张凯丽','2009-12-12','女','13028803290','0660-6733114','xxxx',''),
(DEFAULT,'2013112924','林志玲','2009-12-12','女','13028803291','0660-6763114','xxxx',''),
(DEFAULT,'2013112925','郭德纲','2009-12-12','男','13028803292','0660-6763114','xxxx',''),
(DEFAULT,'2013112926','叶凡','2009-12-12','男','13028803293','0660-6763174','xxxx',''),
(DEFAULT,'2013112927','秦瑞','2009-12-12','男','13028803294','0660-6763134','xxxx',''),
(DEFAULT,'2013112928','李志远','2009-12-12','男','13028803295','0660-6769114','xxxx','');
#机会表--关联客户资源，每个客户都有自己的想要的需求，经理分配给员工去访问他
CREATE TABLE Chance(
	id INT PRIMARY KEY AUTO_INCREMENT,
	chanceName VARCHAR(50) NOT NULL,
	chanceType VARCHAR(50) NOT NULL,
	chanceSource VARCHAR(50) NOT NULL,
	createdBy VARCHAR(50) NOT NULL,
	creationTime TIMESTAMP DEFAULT NOW()NOT NULL,#注册时间
	chanceContent VARCHAR(200)NOT NULL,
        allotUserName VARCHAR(50) #分配的销售代表
)CHARSET=utf8;
INSERT INTO Chance(`id`,`chanceName`,`chanceType`,`chanceSource`,`createdBy`,`creationTime`,`chanceContent`,`allotUserName`)
VALUES(DEFAULT,'廖先生咨询氧气发生器','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'王总转介绍明洞设备','转介绍','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'国外客户来访考察','客户来访','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'亚洲之声进线咨询','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'卡文达进线咨询','媒体进线','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'廖先生咨询氧气发生器2','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'王总转介绍明洞设备2','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'国外客户来访考察2','客户来访','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'亚洲之声进线咨询2','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'卡文达进线咨询2','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'廖先生咨询氧气发生器3','媒体进线','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'廖先生咨询氧气发生器4','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'廖先生咨询氧气发生器5','客户来访2','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'廖先生咨询氧气发生器6','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'廖先生咨询氧气发生器7','转介绍','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'廖先生咨询氧气发生器8','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'卡文达进线咨询7','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'廖先生咨询氧气发生器','转介绍','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'国外客户来访考察3','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'亚洲之声进线咨询3','转介绍','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛'),
(DEFAULT,'卡文达进线咨询3','官网流量','官网','尚鸿运',DEFAULT,'郑州廖先生来电咨询我司氧气发生器的价格，有购买意向，需跟进。联系电话：15801881818','王二毛');
#客户发展计划和客户关怀不要了
#客户资源管理
CREATE TABLE CustomerResource(
	id INT PRIMARY KEY AUTO_INCREMENT,
	customerCode VARCHAR(50) NOT NULL,
	customerName VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	address VARCHAR(200),
	`type` VARCHAR(50) NOT NULL,
	customerStatus VARCHAR(50)DEFAULT '正常'  NOT NULL,#客户状态
	allotStatus VARCHAR(50) DEFAULT '未分配' NOT NULL, #分配状态
	creationTime TIMESTAMP DEFAULT NOW()NOT NULL,#注册时间
	createdBy VARCHAR(50) NOT NULL,#录入人
	phone VARCHAR(50),
	officePhone VARCHAR(50),
	addressPhone VARCHAR(50),#家庭电话
	remark VARCHAR(200),
	ChanceId INT
)CHARSET=utf8;
ALTER TABLE CustomerResource ADD CONSTRAINT `CustomerResource_ChanceId` FOREIGN KEY(`ChanceId`) REFERENCES Chance(`id`);
INSERT INTO CustomerResource(`id`,`customerCode`,`customerName`,`sex`,`email`,`address`,`type`,`customerStatus`,allotStatus,`creationTime`,createdBy,phone,officePhone,addressPhone,remark,ChanceId)
VALUES(DEFAULT,'2013112901','安和平','男','1508549427@qq.com','xxxxxxxxx','普通客户','正常','未分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',6),
(DEFAULT,'2013112902','安和平2','男','2013112902@qq.com','xxxxxxxxx','普通客户','正常','未分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',6),
(DEFAULT,'2013112903','小花','女','2013112903@qq.com','xxxxxxxxx','VIP客户','正常','未分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',3),
(DEFAULT,'2013112904','陈锦涛','男','2013112904@qq.com','xxxxxxxxx','普通客户','正常','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',1),
(DEFAULT,'2013112905','李丽丽','女','2013112905@qq.com','xxxxxxxxx','VIP客户','正常','未分配',DEFAULT,'尚鸿运','13028803278','0660-6763114','0660-6763114','xxxx',3),
(DEFAULT,'2013112906','罗振宇','男','2013112906@qq.com','xxxxxxxxx','普通客户','正常','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',3),
(DEFAULT,'2013112907','李珍珍','女','2013112907@qq.com','xxxxxxxxx','普通客户','正常','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',1),
(DEFAULT,'2013112908','张建军','男','2013112908@qq.com','xxxxxxxxx','VIP客户','已流失','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',2),
(DEFAULT,'2013112909','顾戴路','男','2013112909@qq.com','xxxxxxxxx','普通客户','正常','未分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',9),
(DEFAULT,'2013112910','王老五','男','2013112910@qq.com','xxxxxxxxx','普通客户','正常','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',1),
(DEFAULT,'2013112911','陈小明','男','2013112911@qq.com','xxxxxxxxx','VIP客户','正常','未分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',6),
(DEFAULT,'2013112912','欧阳无敌','男','2013112912@qq.com','xxxxxxxxx','普通客户','正常','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',6),
(DEFAULT,'2013112913','欧阳锋','男','2013112913@qq.com','xxxxxxxxx','普通客户','正常','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',9),
(DEFAULT,'2013112914','仇鹏涛','男','2013112914@qq.com','xxxxxxxxx','普通客户','已流失','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',1),
(DEFAULT,'2013112915','杨钰莹','女','2013112915@qq.com','xxxxxxxxx','普通客户','正常','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',8),
(DEFAULT,'2013112916','白枫','男','2013112916@qq.com','xxxxxxxxx','VIP客户','正常','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',1),
(DEFAULT,'2013112917','刘志勇','男','2013112917@qq.com','xxxxxxxxx','普通客户','已流失','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',1),
(DEFAULT,'2013112918','郭德纲','男','2013112918@qq.com','xxxxxxxxx','普通客户','正常','未分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',9),
(DEFAULT,'2013112919','陈明','男','2013112919@qq.com','xxxxxxxxx','普通客户','正常','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',1),
(DEFAULT,'2013112920','张凯丽','女','2013112920@qq.com','xxxxxxxxx','VIP客户','已流失','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',1),
(DEFAULT,'2013112921','林志玲','女','2013112921@qq.com','xxxxxxxxx','普通客户','正常','已分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',3),
(DEFAULT,'2013112922','秦瑞','男','2013112922@qq.com','xxxxxxxxx','VIP客户','正常','未分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',3),
(DEFAULT,'2013112923','李淑梅','女','2013112923@qq.com','xxxxxxxxx','普通客户','正常','未分配',DEFAULT,'尚鸿运','13028803277','0660-6763114','0660-6763114','xxxx',3);
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
VALUES(DEFAULT,'2013112902','廖昌勇','男','普通客户',DEFAULT,'正常','90%','92%','88%','88%','xx'),
(DEFAULT,'2013112903','王翔宇','男','VIP客户',DEFAULT,'正常','90%','92%','88%','88%','xx'),
(DEFAULT,'2013112904','廖昌勇','男','普通客户',DEFAULT,'已流失','60%','82%','89%','88%','xx'),
(DEFAULT,'2013112905','曾未来','女','普通客户',DEFAULT,'正常','77%','92%','88%','80%','xx'),
(DEFAULT,'2013112906','吴向本','男','VIP客户',DEFAULT,'正常','60%','92%','88%','48%','xx'),
(DEFAULT,'2013112908','欧阳锋','男','普通客户',DEFAULT,'已流失','76%','92%','88%','48%','xx'),
(DEFAULT,'2013112910','王老五','男','普通客户',DEFAULT,'正常','95%','92%','88%','48%','xx'),
(DEFAULT,'2013112911','李淑梅','男','VIP客户',DEFAULT,'已流失','95%','92%','88%','87%','xx'),
(DEFAULT,'2013112912','陈明','男','VIP客户',DEFAULT,'正常','95%','92%','88%','48%','xx'),
(DEFAULT,'2013112913','顾戴路','男','普通客户',DEFAULT,'正常','64%','92%','88%','48%','xx'),
(DEFAULT,'2013112914','张建军','男','VIP客户',DEFAULT,'正常','35%','92%','88%','88%','xx'),
(DEFAULT,'2013112915','张国瑞','男','普通客户',DEFAULT,'正常','60%','92%','88%','48%','xx'),
(DEFAULT,'2013112916','李丽丽','女','VIP客户',DEFAULT,'已流失','89%','92%','88%','48%','xx'),
(DEFAULT,'2013112917','陈锦涛','男','普通客户',DEFAULT,'正常','95%','92%','88%','48%','xx'),
(DEFAULT,'2013112918','杨钰莹','女','VIP客户',DEFAULT,'正常','99%','92%','88%','48%','xx'),
(DEFAULT,'2013112919','柳宗元','男','普通客户',DEFAULT,'正常','100%','92%','88%','48%','xx');
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
VALUES(DEFAULT,'廖昌勇','男','普通客户',2,1.5,'李四'),
(DEFAULT,'王翔宇','男','VIP客户',6,1.5,'李四'),
(DEFAULT,'Harry·Shaw','女','普通客户',2,5,'李四'),
(DEFAULT,'曾不不','男','普通客户',1,1.5,'王二毛'),
(DEFAULT,'廖可爱','男','普通客户',1,1.6,'李四'),
(DEFAULT,'王翔榛','男','VIP客户',6,1.5,'李四'),
(DEFAULT,'Harry·boy','女','普通客户',2,5,'李四'),
(DEFAULT,'李讲讲','男','普通客户',1,1.5,'王二毛'),
(DEFAULT,'廖昌明','男','普通客户',1,1.6,'李四'),
(DEFAULT,'王宇','男','VIP客户',6,1.5,'李四'),
(DEFAULT,'merry li','女','普通客户',2,5,'李四'),
(DEFAULT,'叶梦芯','男','普通客户',1,1.5,'王二毛'),
(DEFAULT,'王可爱','男','普通客户',1,1.6,'李四'),
(DEFAULT,'章六六','男','VIP客户',6,1.5,'李四'),
(DEFAULT,'ku gir','女','普通客户',2,5,'李四'),
(DEFAULT,'陈松该','男','普通客户',1,1.5,'王二毛'),
(DEFAULT,'廖一亿','男','普通客户',1,1.6,'李四'),
(DEFAULT,'王翔婷','男','VIP客户',6,1.5,'李四'),
(DEFAULT,'Harry·baby','女','普通客户',2,5,'李四'),
(DEFAULT,'曾上','男','普通客户',1,1.5,'王二毛'),
(DEFAULT,'李勇','男','普通客户',1,1.6,'李四'),
(DEFAULT,'黄宇','男','VIP客户',6,1.5,'李四'),
(DEFAULT,'YY Shaw','女','普通客户',2,5,'李四'),
(DEFAULT,'蓝来','男','普通客户',1,1.5,'王二毛'),
(DEFAULT,'李昌勇','男','普通客户',1,1.6,'李四');
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
VALUES(DEFAULT,'廖昌勇','男','普通客户',2,'A'),
(DEFAULT,'王翔宇','男','VIP客户',6,'A'),
(DEFAULT,'Harry·Shaw','女','普通客户',3,'A'),
(DEFAULT,'曾未来','男','普通客户',2,'A'),
(DEFAULT,'陈小明','男','VIP客户',10,'A'),
(DEFAULT,'吴向本','男','VIP客户',12,'A'),
(DEFAULT,'陈小明','男','VIP客户',9,'A'),
(DEFAULT,'陈锦涛','男','普通客户',3,'A'),
(DEFAULT,'杨钰莹','女','VIP客户',2,'A'),
(DEFAULT,'柳宗元','男','普通客户',1,'A'),
(DEFAULT,'顾戴路','男','普通客户',4,'B'),
(DEFAULT,'王老五','男','普通客户',5,'C'),
(DEFAULT,'欧阳锋','男','普通客户',4,'C'),
(DEFAULT,'郭德纲','男','普通客户',2,'A'),
(DEFAULT,'李珍珍','女','普通客户',1,'A'),
(DEFAULT,'李丽丽','女','普通客户',3,'A'),
(DEFAULT,'林志玲','男','普通客户',1,'A'),
(DEFAULT,'欧阳无敌','男','普通客户',1,'A'),
(DEFAULT,'张建军','男','VIP客户',8,'A'),
(DEFAULT,'廖昌勇','男','普通客户',2,'B');


#合同创建
CREATE TABLE ContractCreate(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userName VARCHAR(50) NOT NULL,
	contractName VARCHAR(100) NOT NULL,
	contractType VARCHAR(50) NOT NULL,
	contractMoney FLOAT NOT NULL,
	contractStatus VARCHAR(50) DEFAULT '已创建' NOT NULL,
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
VALUES(DEFAULT,'王四毛','厦门福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','山东临沂泰兴公司离心机销售合同','销售合同',117800.00,DEFAULT,DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','浙江宏昂公司离心机销售合同','销售合同',117800.00,DEFAULT,DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','四川传福集团设备使用培训合同','技术合同',117800.00,'已审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','厦门公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','湖南福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','福建睿虎公司明洞设备销售合同','销售合同',117800.00,'已审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','陕西易尔通公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','陕北信睿公司明洞设备销售合同','销售合同',517800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','湖北湛华公司明洞设备销售合同','销售合同',417800.00,DEFAULT,DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','江西索腾公司明洞设备销售合同','销售合同',317800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','广东飞鸣公司明洞设备销售合同','销售合同',217800.00,'已审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','辽宁临沂泰兴公司离心机销售合同','销售合同',117800.00,DEFAULT,DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','兴宁宏昂公司离心机销售合同','销售合同',117800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','汕头传福集团设备使用培训合同','技术合同',117800.00,'已审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','汕尾公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','珠海福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','梅州睿虎公司明洞设备销售合同','销售合同',117800.00,DEFAULT,DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','永和易尔通公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','揭阳信睿公司明洞设备销售合同','销售合同',517800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','佛山湛华公司明洞设备销售合同','销售合同',417800.00,'已审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','广州索腾公司明洞设备销售合同','销售合同',317800.00,'待审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','惠州飞鸣公司明洞设备销售合同','销售合同',217800.00,'已审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ',''),
(DEFAULT,'王四毛','中山卓越公司明洞设备运输附加合同','运输合同',117800.00,'已执行',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','');
#合同审核
CREATE TABLE ContractExamine(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userName VARCHAR(50) NOT NULL,
	contractName VARCHAR(100) NOT NULL,
	contractType VARCHAR(50) NOT NULL,
	contractMoney FLOAT NOT NULL,
	contractStatus VARCHAR(50) DEFAULT '已创建' NOT NULL,
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
VALUES(DEFAULT,'王四毛','山东临沂泰兴公司离心机销售合同','销售合同',117800.00,DEFAULT,DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','浙江宏昂公司离心机销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','四川传福集团设备使用培训合同','技术合同',117800.00,'已审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','厦门福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','拒绝'),
(DEFAULT,'王四毛','湖南福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','拒绝'),
(DEFAULT,'王四毛','福建睿虎公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','陕西易尔通公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','拒绝'),
(DEFAULT,'王四毛','陕北信睿公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','江西索腾公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','拒绝'),
(DEFAULT,'王四毛','广东飞鸣公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','冠东宏昂公司离心机销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','银行传福集团设备使用培训合同','技术合同',117800.00,'已审核',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','思考福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','拒绝'),
(DEFAULT,'王四毛','考虑福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','拒绝'),
(DEFAULT,'王四毛','完全睿虎公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','一天易尔通公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','拒绝'),
(DEFAULT,'王四毛','二炮信睿公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','熟练索腾公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','拒绝'),
(DEFAULT,'王四毛','看过飞鸣公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','同意'),
(DEFAULT,'王四毛','反对卓越公司明洞设备运输附加合同','运输合同',117800.00,'已执行',DEFAULT,'蒋红林','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','王四毛','拒绝');

#合同管理
CREATE TABLE ContractManage(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userName VARCHAR(50) NOT NULL,
	contractName VARCHAR(100) NOT NULL,
	contractType VARCHAR(50) NOT NULL,
	contractMoney FLOAT NOT NULL,
	contractStatus VARCHAR(50) DEFAULT '已创建' NOT NULL,
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
VALUES(DEFAULT,'王四毛','山东临沂泰兴公司离心机销售合同','销售合同',117800.00,DEFAULT,DEFAULT,'王五','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','该合同于2013年11月30日与客户正式签订，开始执行合同。'),
(DEFAULT,'王四毛','浙江宏昂公司离心机销售合同','销售合同',117800.00,'待审核',DEFAULT,'李四','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于客户方原因，原条款中第四项第2条约定内容发生改变，导致该合同没有办法继续执行，需做合同变更。'),
(DEFAULT,'王四毛','四川传福集团设备使用培训合同','技术合同',117800.00,'已审核',DEFAULT,'王五','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于我方货源问题，无法履行该合同的后续条款，因此经与客户方协商后，对该合同进行合同转让。'),
(DEFAULT,'王四毛','厦门福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'王五','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于客户方原因造成合同实施条件不成立，经甲乙双方协商决定，解除该合同。'),
(DEFAULT,'王四毛','尽快宏昂公司离心机销售合同','销售合同',117800.00,'待审核',DEFAULT,'李四','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于客户方原因，原条款中第四项第2条约定内容发生改变，导致该合同没有办法继续执行，需做合同变更。'),
(DEFAULT,'王四毛','传福集团设备使用培训合同','技术合同',117800.00,'已审核',DEFAULT,'王五','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于我方货源问题，无法履行该合同的后续条款，因此经与客户方协商后，对该合同进行合同转让。'),
(DEFAULT,'王四毛','福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'王五','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于客户方原因造成合同实施条件不成立，经甲乙双方协商决定，解除该合同。'),
(DEFAULT,'王四毛','宏昂公司离心机销售合同','销售合同',117800.00,'待审核',DEFAULT,'李四','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于客户方原因，原条款中第四项第2条约定内容发生改变，导致该合同没有办法继续执行，需做合同变更。'),
(DEFAULT,'王四毛','模块传福集团设备使用培训合同','技术合同',117800.00,'已审核',DEFAULT,'王五','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于我方货源问题，无法履行该合同的后续条款，因此经与客户方协商后，对该合同进行合同转让。'),
(DEFAULT,'王四毛','马克福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'王五','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于客户方原因造成合同实施条件不成立，经甲乙双方协商决定，解除该合同。'),
(DEFAULT,'王四毛','快乐宏昂公司离心机销售合同','销售合同',117800.00,'待审核',DEFAULT,'李四','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于客户方原因，原条款中第四项第2条约定内容发生改变，导致该合同没有办法继续执行，需做合同变更。'),
(DEFAULT,'王四毛','天使传福集团设备使用培训合同','技术合同',117800.00,'已审核',DEFAULT,'王五','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于我方货源问题，无法履行该合同的后续条款，因此经与客户方协商后，对该合同进行合同转让。'),
(DEFAULT,'王四毛','福报福祥公司明洞设备销售合同','销售合同',117800.00,'待审核',DEFAULT,'王五','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','由于客户方原因造成合同实施条件不成立，经甲乙双方协商决定，解除该合同。'),
(DEFAULT,'王四毛','安康福祥公司明洞设备运输附加合同','运输合同',117800.00,'已执行',DEFAULT,'王五','山东临沂泰兴公司','北京急速科技','鲁No.0569','京B2-20050088','经山东临沂泰兴公司（以下称买受方）与北京急速科技有限公司（以下称出卖方）友好协商，特订立以下条款：...................     ','xx','王四毛','xx');
#服务创建 销售代表创建，销售经理对已提交的服务进行分配
CREATE TABLE ServiceCreate(
	id INT PRIMARY KEY AUTO_INCREMENT,
	serviceName VARCHAR(50) NOT NULL,
	serviceType VARCHAR(100) NOT NULL,
	serviceStatus VARCHAR(50) DEFAULT '新创建' NOT NULL,
	lastUpdateTime TIMESTAMP DEFAULT NOW()NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	customerName VARCHAR(50) NOT NULL, #客户名字
	customerPhone VARCHAR(50) NOT NULL,
	serviceConcent VARCHAR(200) NOT NULL,
	remark VARCHAR(200)#备注
)CHARSET=utf8;
INSERT INTO ServiceCreate(`id`,serviceName,`serviceType`,`serviceStatus`,`lastUpdateTime`,`createdBy`,`nextHanlder`,`customerName`,`customerPhone`,`serviceConcent`,remark)
VALUES(DEFAULT,'四川客户离心器售后服务','售后服务','新创建',DEFAULT,'王二毛','','李曦','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'山东客户离心器安装服务','售前服务','已提交',DEFAULT,'王三毛','王怡','李曦2','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'云南客户设备故障投诉服务','投诉服务','新创建',DEFAULT,'王四毛','','李曦3','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'加快分解客户明洞设备安装服务','售后服务','已分配',DEFAULT,'王二毛','李彪','李曦4','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'北本办法客户设备升级咨询服务','售前服务','已反馈',DEFAULT,'王二毛','王五','李曦5','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'啊是东京富士电机客户离心器安装服务','售前服务','已提交',DEFAULT,'王三毛','王怡','李曦2','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'而预热回复客户设备故障投诉服务','投诉服务','新创建',DEFAULT,'王四毛','','李曦3','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'啊大家都客户明洞设备安装服务','售后服务','已分配',DEFAULT,'王二毛','李彪','李曦4','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'付房费很少发生客户设备升级咨询服务','售前服务','已反馈',DEFAULT,'王二毛','王五','李曦5','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'发v部分v部分v客户离心器安装服务','售前服务','已提交',DEFAULT,'王三毛','王怡','李曦2','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'摆放方式客户设备故障投诉服务','投诉服务','新创建',DEFAULT,'王四毛','','李曦3','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'北能否你是客户明洞设备安装服务','售后服务','已分配',DEFAULT,'王二毛','李彪','李曦4','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'加分加分回复客户设备升级咨询服务','售前服务','已反馈',DEFAULT,'王二毛','王五','李曦5','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'纷纷改行客户离心器安装服务','售前服务','已提交',DEFAULT,'王三毛','王怡','李曦2','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'去仍然十分客户设备故障投诉服务','投诉服务','新创建',DEFAULT,'王四毛','','李曦3','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'附件是粉红色如果客户明洞设备安装服务','售后服务','已分配',DEFAULT,'王二毛','李彪','李曦4','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'复苏步伐的客户设备升级咨询服务','售前服务','已反馈',DEFAULT,'王二毛','王五','李曦5','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx'),
(DEFAULT,'爱空间发哈的客户设备降级咨询服务','咨询服务','已处理',DEFAULT,'王五毛','张静','李曦6','13815 368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','xxxxx');

#服务分配
#销售经理对状态为“已提交”的服务单据进行分配，指定销售代表处理该单据。除了“新创建”以外的其他状态可以被查看。
CREATE TABLE ServiceAllot(
	id INT PRIMARY KEY AUTO_INCREMENT,
	serviceName VARCHAR(50) NOT NULL,
	serviceType VARCHAR(100) NOT NULL,
	serviceStatus VARCHAR(50) DEFAULT '新创建' NOT NULL,
	lastUpdateTime TIMESTAMP DEFAULT NOW()NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	customerName VARCHAR(50) NOT NULL, #客户名字
	customerPhone VARCHAR(50) NOT NULL,
	serviceConcent VARCHAR(200) NOT NULL,
	nextAllot VARCHAR(50)#分配给哪些销售代表做
)CHARSET=utf8;
INSERT INTO ServiceAllot(`id`,serviceName,`serviceType`,`serviceStatus`,`lastUpdateTime`,`createdBy`,`nextHanlder`,`customerName`,`customerPhone`,`serviceConcent`,nextAllot)
VALUES(DEFAULT,'四川客户离心器售后服务','售后服务','已提交',DEFAULT,'王二毛','王五','李曦','13815368899','唯美绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'山东客户离心器安装服务','售前服务','已分配',DEFAULT,'王三毛','王怡','李曦2','13815368899','考虑绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'云南客户设备故障投诉服务','投诉服务','已提交',DEFAULT,'王四毛','王五','李曦3','13815368899','愉快绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王四毛'),
(DEFAULT,'北京客户明洞设备安装服务','售后服务','已分配',DEFAULT,'王二毛','李彪','李曦4','13815368899','管已绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'北京客户设备升级咨询服务','售前服务','已反馈',DEFAULT,'王二毛','王五','李曦5','13815368899','控件绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'山东客户离心器安装服务','售前服务','已分配',DEFAULT,'王三毛','王怡','李曦2','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'云南客户设备故障投诉服务','投诉服务','已提交',DEFAULT,'王四毛','王五','李曦3','13815368899','官房绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王四毛'),
(DEFAULT,'北京客户明洞设备安装服务','售后服务','已分配',DEFAULT,'王二毛','李彪','李曦4','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'北京客户设备升级咨询服务','售前服务','已反馈',DEFAULT,'王二毛','王五','李曦5','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'山东客户离心器安装服务','售前服务','已分配',DEFAULT,'王三毛','王怡','李曦2','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'云南客户设备故障投诉服务','投诉服务','已提交',DEFAULT,'王四毛','王五','李曦3','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王四毛'),
(DEFAULT,'北京客户明洞设备安装服务','售后服务','已分配',DEFAULT,'王二毛','李彪','李曦4','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'北京客户设备升级咨询服务','售前服务','已反馈',DEFAULT,'王二毛','王五','李曦5','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'山东客户离心器安装服务','售前服务','已分配',DEFAULT,'王三毛','王怡','李曦2','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'云南客户设备故障投诉服务','投诉服务','已提交',DEFAULT,'王四毛','王五','李曦3','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王四毛'),
(DEFAULT,'北京客户明洞设备安装服务','售后服务','已分配',DEFAULT,'王二毛','李彪','李曦4','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'北京客户设备升级咨询服务','售前服务','已反馈',DEFAULT,'王二毛','王五','李曦5','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛'),
(DEFAULT,'北京客户设备降级咨询服务','咨询服务','已处理',DEFAULT,'王五毛','张静','李曦6','13815368899','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','王三毛');

#服务处理
#状态全都是已分配的，然后去处理
CREATE TABLE ServiceDispose(
	id INT PRIMARY KEY AUTO_INCREMENT,
	serviceName VARCHAR(50) NOT NULL,
	serviceType VARCHAR(100) NOT NULL,
	serviceStatus VARCHAR(50) DEFAULT '新创建' NOT NULL,
	createTime TIMESTAMP DEFAULT NOW() NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	customerPhone VARCHAR(50) NOT NULL,
	serviceConcent VARCHAR(200) NOT NULL,
	disposeResult VARCHAR(50),#处理结果
	disposeRemark VARCHAR(200)
)CHARSET=utf8;
INSERT INTO ServiceDispose(`id`,serviceName,`serviceType`,`serviceStatus`,`createTime`,`createdBy`,`nextHanlder`,`customerPhone`,`serviceConcent`,disposeResult,disposeRemark)
VALUES(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已分配',DEFAULT,'王二毛','王二毛','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已处理','已联系售后人员准备上门安装，去之前会再次联系客户。');
#服务反馈
#状态全都是已处理的，然后去看是否有反馈
CREATE TABLE ServiceBack(
	id INT PRIMARY KEY AUTO_INCREMENT,
	serviceName VARCHAR(50) NOT NULL,
	serviceType VARCHAR(100) NOT NULL,
	serviceStatus VARCHAR(50) DEFAULT '新创建' NOT NULL,
	createTime TIMESTAMP DEFAULT NOW() NOT NULL,#最后修改时间
	createdBy VARCHAR(50) NOT NULL,#操作人
	nextHanlder VARCHAR(50),#待处理人，关联部门 找和他相同部门的销售经理
	customerPhone VARCHAR(50) NOT NULL,
	serviceConcent VARCHAR(200) NOT NULL,
	backResult VARCHAR(50),#反馈结果
	backRemark VARCHAR(200)
)CHARSET=utf8;
INSERT INTO ServiceBack(`id`,serviceName,`serviceType`,`serviceStatus`,`createTime`,`createdBy`,`nextHanlder`,`customerPhone`,`serviceConcent`,backResult,backRemark)
VALUES(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已处理',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。');

#服务归档
#状态全都是已反馈的，然后修改这个为归档就行
CREATE TABLE ServicePigeonhole(
	id INT PRIMARY KEY AUTO_INCREMENT,
	serviceName VARCHAR(50) NOT NULL,
	serviceType VARCHAR(100) NOT NULL,
	serviceStatus VARCHAR(50) DEFAULT '新创建' NOT NULL,
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
VALUES(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'山东客户离心器安装服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','已归档'),
(DEFAULT,'云南客户设备故障投诉服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','已反馈','已向客户反馈。','未归档'),
(DEFAULT,'四川客户离心器售后服务','售后服务','已反馈',DEFAULT,'王二毛','王五','李曦','四川绵阳的李曦来电反映一年前购买的离心器有故障，需解决。','未反馈','未向客户反馈。','未归档');
#常见问题管理 销售代表记录
CREATE TABLE Problems(
	id INT PRIMARY KEY AUTO_INCREMENT,
	problemsTitle VARCHAR(100) NOT NULL, #问题名称
	serviceType VARCHAR(100) NOT NULL,
	createdBy VARCHAR(50) NOT NULL,#操作人
	lastUpdateTime TIMESTAMP DEFAULT NOW()NOT NULL,#最后修改时间
	responseContent VARCHAR(200),#答复内容
	remark VARCHAR(50)#备注
)CHARSET=utf8;

INSERT INTO Problems(`id`,problemsTitle,`serviceType`,`createdBy`,`lastUpdateTime`,`responseContent`,`remark`)
VALUES(DEFAULT,'离心器初速过慢什么问题','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'安装离心器需要哪些条件','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'ERS-2型冲击器总是需要二次启动','投诉问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'明洞设备安装后多久可以投入生产','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'ERS-2型冲击器售价多少','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'史蒂夫-霍金为啥死的','业务问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'汽车召回，是指投放市场的汽车，发现由于设计或制造方面的原因存在缺陷','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'对于东风裕隆这个企业，编者不知道大家对其有没有印象','投诉问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'记得在早期不少的德系车开始使用带涡轮的发动机后','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'ERS-2型冲击器售价多少','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'史蒂夫-霍金为啥死的一直以来','业务问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'不少的人开始自驾春游','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'很多人一看到这个标题，可能都会大吃一惊','投诉问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'要选择合适的“血液','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'ERS-2型冲击器售价多少','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'史蒂夫-霍金为啥死的','业务问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'安装离心器需要哪些条件','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'ERS-2型冲击器总是需要二次启动','投诉问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'明洞设备安装后多久可以投入生产','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'ERS-2型冲击器售价多少','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'史蒂夫-霍金为啥死的','业务问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'安装离心器需要哪些条件','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'ERS-2型冲击器总是需要二次启动','投诉问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'明洞设备安装后多久可以投入生产','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'ERS-2型冲击器售价多少','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'史蒂夫-霍金为啥死的','业务问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'安装离心器需要哪些条件','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'ERS-2型冲击器总是需要二次启动','投诉问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'明洞设备安装后多久可以投入生产','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'ERS-2型冲击器售价多少','售后问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'史蒂夫-霍金为啥死的','业务问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；',''),
(DEFAULT,'史蒂夫-霍金为为啥这么可爱','业务问题','王二毛',DEFAULT,'1、首先检查电机碳刷与换向片之间是否有污物；2、检查碳刷与换向片之间是否空隙较大，弹簧的弹力是否减小；','');

#统计分析--客户构成统计
#客户类型、客户来源、区域分布、所属行业 ；这每一项都要写多一个表关联贼烦
CREATE TABLE Constitute(
	id INT PRIMARY KEY AUTO_INCREMENT,
	customerCount INT NOT NULL, #客户数量
	`month` VARCHAR(50) NOT NULL, #月份
	yearOnyear VARCHAR(50) NOT NULL,#同比
	comparative VARCHAR(50) NOT NULL#环比
)CHARSET=utf8;
INSERT INTO Constitute(`id`,customerCount,`month`,`yearOnyear`,`comparative`)
VALUES(DEFAULT,549,'2013-10','+5.2%','+3.97%'),
(DEFAULT,549,'2013-10','+5.2%','+3.9%'),
(DEFAULT,528,'2013-09','+5.2%','+3.97%'),
(DEFAULT,531,'2013-08','+5.5%','+3.97%'),
(DEFAULT,516,'2013-07','+5.2%','+3.94%'),
(DEFAULT,549,'2013-06','+5.4%','+3.97%'),
(DEFAULT,524,'2013-05','+5.2%','+3.4%'),
(DEFAULT,549,'2013-04','+5.2%','+3.97%'),
(DEFAULT,549,'2013-03','+5.1%','+3.77%'),
(DEFAULT,579,'2013-02','+5.3%','+3.97%'),
(DEFAULT,549,'2013-01','+5.8%','+3.97%'),
(DEFAULT,540,'2013-11','+5.4%','+3.87%'),
(DEFAULT,541,'2013-12','+5.9%','+3.97%'),
(DEFAULT,519,'2014-01','+5.2%','+7.57%'),
(DEFAULT,549,'2014-02','+5.2%','+3.97%'),
(DEFAULT,549,'2014-03','+5.2%','+3.98%'),
(DEFAULT,540,'2014-04','+5.7%','+3.97%'),
(DEFAULT,549,'2014-05','+5.4%','+5.97%'),
(DEFAULT,549,'2014-06','+5.2%','+3.96%'),
(DEFAULT,543,'2014-07','+5.2%','+3.97%'),
(DEFAULT,549,'2014-08','+5.5%','+3.90%'),
(DEFAULT,546,'2014-09','+5.6%','+3.47%'),
(DEFAULT,540,'2014-10','+5.2%','+5.97%'),
(DEFAULT,541,'2014-11','+5.0%','+3.97%'),
(DEFAULT,545,'2014-12','+5.1%','+8.97%');