<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/head.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>服务反馈</title>

</head>
<body>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>销售管理<small>&gt;&gt;服务反馈</small></h3>
            </div>


        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <form action="" method="post" class="navbar-form navbar" >
                            <div class="form-group f-group">
                                <strong class="h4">服务名称:</strong>
                                <input type="text" placeholder="Search" class="form-control input-md roleName">
                                <strong class="h4">类型</strong>
                                <select name="" id="">
                                    <option value="">1111</option>
                                </select>
                                <strong class="h4">状态</strong>
                                <select name="" id="11">
                                    <option value="">1111</option>
                                </select>
                            </div>
                            <input type="submit" value="查询" class="btn btn-success">

                        </form>

                    </div>

                    <div class="x_content">

                        <strong class="h3">服务信息列表</strong>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th></th>
                                <th>服务名称</th>
                                <th>类型</th>
                                <th>状态</th>
                                <th>最后操作时间</th>
                                <th>操作人</th>
                                <th>待处理人</th>
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
                                <td>
                                    <a href="#" class="btn btn-info btn-xs">反馈</a>
                                    <a href="#" class="btn btn-success btn-xs">查看</a>
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
