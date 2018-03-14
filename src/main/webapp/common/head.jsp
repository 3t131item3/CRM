<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">

    <title>客户关系管理系统</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <style>
        .operation a{
            margin-right: 30px;
            margin-bottom:20px;
        }
        .roleName{
            border-radius:10px;
            height:36px;
        }
        .userInfo{
            position: relative;
            display: inline-block;
            height: 50px;
            line-height: 50px;
            font-size: 24px;
            left: 300px;
        }
        .exit{
            float: right;
            font-size: 24px;
            color: #FF2F2F;
            margin-right: 20px;
        }
        .exit:hover{
            color:red;
        }

    </style>
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">

                </div>


                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">

                        <ul class="nav side-menu">
                            <li class="active"><a><i class="fa fa-cogs"></i> 系统设置 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu" style="display: block">
                                    <c:if test="${userSession.id==1}">
                                        <li><a href="/crm/rolelist">角色管理</a></li>
                                        <li><a href="/crm/listDeptAll">组织结构</a></li>
                                        <li><a href="/crm/listEmpAll">员工管理</a></li>
                                        <%--<li><a href="/data">数据字典</a></li>--%>
                                    </c:if>
                                    <li><a href="/crm/listNoticeAll">公告管理</a></li>
                                    <li><a href="/crm/myInfo/${userSession.id}">个人信息</a></li>
                                   <%-- <li><a href="/base">基础信息</a></li>--%>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-edit"></i> 销售管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/crm/planList">销售计划</a></li>
                                    <c:if test="${userSession.roleId!=4 and userSession.roleId!=5}">
                                      <li><a href="/crm/forecastList">销售预测</a></li>
                                      <li><a href="/crm/achievement">销售绩效</a></li>
                                    </c:if>
                                    <li><a href="/crm/contactslist">联系人管理</a></li>
                                  <%--  <li><a href="/chance">机会管理</a></li>
                                    <li><a href="/compete">竞争管理</a></li>
                                    <li><a href="/analysis">销售分析</a></li>--%>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-user"></i> 客户管理<span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/crm/customerResourceList">客户资源管理</a></li>
                                    <li><a href="/crm/customerVauleList">客户价值管理</a></li>
                                    <li><a href="/crm/satisfaction">客户满意度管理</a></li>
                                    <li><a href="/crm/customerReputationList">客户信誉管理</a></li>
                                   <%-- <li><a href="/crm/develop">客户发展计划</a></li>
                                    <li><a href="/crm/concern">客户关怀</a></li>--%>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-table"></i> 服务管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/crm/serviceCreateList">服务创建</a></li>
                                    <li><a href="/crm/serviceAllotList">服务分配</a></li>
                                    <li><a href="/crm/dispose">服务处理</a></li>
                                    <li><a href="/crm/feedback">服务反馈</a></li>
                                    <li><a href="/crm/pigeonhole">服务归档</a></li>
                                    <li><a href="/crm/problems">常见问题管理</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-bar-chart-o"></i> 订单管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/wait">代下订单</a></li>
                                    <li><a href="/query">订单查询</a></li>
                                    <li><a href="/statistics">订单统计</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-clone"></i>合同管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/crm/contractCreateList">合同创建</a></li>
                                    <li><a href="/crm/contractExamineList">合同审核</a></li>
                                    <li><a href="/crm/contractManageList">合同管理</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-clone"></i>统计分析 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/constitute">客户构成统计</a></li>
                                    <li><a href="/flee">客户流失统计</a></li>
                                    <li><a href="/devote">客户贡献统计</a></li>
                                    <li><a href="/serve">客户服务统计</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>


                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <p class="userInfo">欢迎:${userSession.userCode} 部门:${userSession.dept.name}  角色:${userSession.role.roleName}</p>
                    <a class="exit" href="/crm/exit">[退出]</a>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>






                </nav>
            </div>
        </div>
        <input type="hidden" id="path" value="${pageContext.request.contextPath}">
        <!-- /top navigation -->

