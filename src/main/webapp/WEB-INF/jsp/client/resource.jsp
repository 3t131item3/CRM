<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户资源管理</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;客户资源管理</small></h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <select name="" >
                                    <option value="">客户姓名</option>
                                </select>
                                <input type="text" placeholder="Search" class="form-control input-md roleName">
                                <strong class="h4">分配状态:</strong>
                                <select name="" >
                                    <option value="">不限</option>
                                </select>
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">

                        </form>

                    </div>

                    <div class="x_content">

                        <strong class="h3">角色信息列表</strong>

                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th></th>
                                <th>客户姓名</th>
                                <th>性别</th>
                                <th>类型</th>
                                <th>状态</th>
                                <th>分配状态</th>
                                <th>录入时间</th>
                                <th>录入人</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>Donna Snider</td>
                                <td>New York</td>
                                <td>27</td>
                                <td>2011/01/25</td>
                                <td>$112,000</td>
                                <td>$112,000</td>
                                <td>$112,000</td>
                                <td>
                                    <a href="#" class="btn btn-primary btn-xs">添加</a>
                                    <a href="/modifyRole" class="btn btn-warning btn-xs">修改</a>
                                    <a href="#" class="btn btn-success btn-xs">查看</a>
                                    <a href="#" class="btn btn-success btn-xs">分配</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>


                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
<%@ include file="/common/foot.jsp"%>
</body>
</html>
