<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>详细信息</title>
    <%--    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">--%>
    <%--    <script type="text/javascript" src="static/jquery/jquery-3.4.1.min.js"></script>--%>
    <%--    <script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script>--%>

    <%--    <link rel="stylesheet" href="../../static/bootgrid/jquery.bootgrid.css">--%>
    <%--    <script type="text/javascript" src="../../static/bootgrid/jquery.bootgrid.js"></script>--%>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>

<div id="main" class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">
                <span class="input-group-addon">姓名:</span>
                <input type="text" class="form-control" id="nameForSearch" name="nameForSearch"
                       value="<%=session.getAttribute("name")%>">
            </div>
            <div class="input-group">
                <span class="input-group-addon">部门:</span>
                <input type="text" class="form-control" id="departmentForSearch" name="departmentForSearch"
                       value="<%=session.getAttribute("department")%>">
            </div>
            <div class="input-group">
                <span class="input-group-addon">属地:</span>
                <input type="text" class="form-control" id="locationInfoForSearch" name="locationInfoForSearch"
                       value="<%=session.getAttribute("locationInfo")%>">
            </div>
            <span class="input-group-btn">
                    <button class="btn btn-default" type="button" onclick="search()">查詢</button>
                </span>
        </div>
    </div>
    </br>

    <div class="row">
        <div class="col-md-1">
            <button type="button" class="btn btn-default" onclick="doImprotObject()">导出信息</button>
        </div>
        <div class="col-md-3">
            <select class="form-control" id="locationInfoSelect">
                <option value="">全部</option>
                <c:forEach items="${locationInfoList}" var="op">
                    <option value="${op}">${op}</option>
                </c:forEach>
            </select>
        </div>
    </div>
    </br>

    <div class="row" style="padding: 0 15px;">
        <table class="table table-striped table-bordered table-hover" id="paging_table">
            <thead>
            <tr>
                <th>姓名</th>
                <th>所属部门</th>
                <th>所在属地</th>
                <th>电话</th>
                <th>电脑信息详情</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list }" var="item">
                <tr>
                    <td>${item.name }</td>
                    <td>${item.department }</td>
                    <td>${item.locationInfo }</td>
                    <td>${item.tel }</td>
                    <td>
                        <button type="button" class="btn btn-primary" onclick="getModalData(${item.id})">
                            电脑信息详情
                        </button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    </br>

    <div class="row">
        <div id="show_page_info" class="col-md-4" style="line-height: 80px;">
            当前${pageInfo.pageNum }页,总${pageInfo.pages }页,总共${pageInfo.total }条记录
        </div>
    </div>

    <div class="row" style="padding: 0 15px;">
        <ul class="pagination">
            <li <c:if test="${pageInfo.pageNum==1}">class="disabled"</c:if>>
                <a href="list?pageNum=1">&laquo;</a>
            </li>
            <c:forEach begin="1" end="${pageInfo.pages}" step="1" var="pageNo">
                <li <c:if test="${pageInfo.pageNum==pageNo}">class="active"</c:if>>
                    <a href="list?pageNum=${pageNo}">${pageNo}</a>
                </li>
            </c:forEach>
            <li <c:if test="${pageInfo.pageNum==pageInfo.pages}">class="disabled"</c:if>>
                <a href="list?pageNum=${pageInfo.pages}">&raquo;</a>
            </li>
        </ul>
    </div>
    </br>

    <div class="row">
        <div class="col-md-1">
            <button type="button" class="btn btn-default" onclick="backInfo()">返回</button>
        </div>
    </div>

</div>

<div class="modal fade" id="pcInfoDetailModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="modalLabel">电脑信息详情</h4>
            </div>
            <div class="modal-body">
                <form action="update" id="pcInfoDetailForm" method=post>
                    <div class="form-group">
                        <label for="xipName" class="control-label">机器名称:</label>
                        <input type="text" class="form-control" id="xipName" name="xipName">
                    </div>
                    <div class="form-group">
                        <label for="xipCpu" class="control-label">CPU:</label>
                        <input type="text" class="form-control" id="xipCpu" name="xipCpu">
                    </div>
                    <div class="form-group">
                        <label for="xipRam" class="control-label">内存:</label>
                        <input type="text" class="form-control" id="xipRam" name="xipRam">
                    </div>
                    <div class="form-group">
                        <label for="xipBoard" class="control-label">主板:</label>
                        <input type="text" class="form-control" id="xipBoard" name="xipBoard">
                    </div>
                    <div class="form-group">
                        <label for="xipBios" class="control-label">BIOS:</label>
                        <input type="text" class="form-control" id="xipBios" name="xipBios">
                    </div>
                    <div class="form-group">
                        <label for="xipYp" class="control-label">硬盘:</label>
                        <input type="text" class="form-control" id="xipYp" name="xipYp">
                    </div>
                    <div class="form-group">
                        <label for="xipXk" class="control-label">显卡:</label>
                        <input type="text" class="form-control" id="xipXk" name="xipXk">
                    </div>
                    <div class="form-group">
                        <label for="xipXsq" class="control-label">显示器:</label>
                        <input type="text" class="form-control" id="xipXsq" name="xipXsq">
                    </div>
                    <div class="form-group">
                        <label for="xipMac" class="control-label">网卡MAC:</label>
                        <input type="text" class="form-control" id="xipMac" name="xipMac" readonly>
                    </div>
                    <div class="form-group">
                        <label for="xipIp" class="control-label">IP:</label>
                        <input type="text" class="form-control" id="xipIp" name="xipIp">
                    </div>
                    <div class="form-group">
                        <label for="xipOs" class="control-label">操作系统:</label>
                        <input type="text" class="form-control" id="xipOs" name="xipOs">
                    </div>
                    <div class="form-group">
                        <label for="xipType" class="control-label">类型:</label>
                        <input type="text" class="form-control" id="xipType" name="xipType">
                    </div>
                    <div class="form-group">
                        <label for="fixedAssetsNo" class="control-label">固定资产编号:</label>
                        <input type="text" class="form-control" id="fixedAssetsNo" name="fixedAssetsNo">
                    </div>
                    <div class="form-group">
                        <label for="name" class="control-label">使用者姓名:</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="form-group">
                        <label for="department" class="control-label">所属部门:</label>
                        <input type="text" class="form-control" id="department" name="department">
                    </div>
                    <div class="form-group">
                        <label for="locationInfo" class="control-label">所在属地:</label>
                        <input type="text" class="form-control" id="locationInfo" name="locationInfo">
                    </div>
                    <div class="form-group">
                        <label for="tel" class="control-label">电话:</label>
                        <input type="text" class="form-control" id="tel" name="tel">
                    </div>
                    <div class="form-group">
                        <label for="remark" class="control-label">备注:</label>
                        <input type="text" class="form-control" id="remark" name="remark">
                    </div>
                    <input type="hidden" id="userId" name="userId">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="updateInfo()">保存</button>
            </div>
        </div>
    </div>
</div>

<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript">
    function backInfo() {
        window.location.href = "info";
    }

    function search() {
        var name = document.getElementById("nameForSearch");
        var department = document.getElementById("departmentForSearch");
        var locationInfo = document.getElementById("locationInfoForSearch");
        location.href = "search?" + "name=" + encodeURI(name.value)
            + "&department=" + encodeURI(department.value)
            + "&locationInfo=" + encodeURI(locationInfo.value);
    }

    function doImprotObject() {
        var obj = document.getElementById("locationInfoSelect");
        var index = obj.selectedIndex;
        var locationInfo = obj.options[index].value;
        // $('#locationInfoSelect option:selected').val();
        location.href = "export?" + "locationInfo=" + encodeURI(locationInfo);
    }

    // $('#pcInfoDetailModal').on('show.bs.modal', function (event) {
    //     var button = $(event.relatedTarget);
    //     var recipient = button.data('whatever');
    //     var modal = $(this);
    //     modal.find('.modal-body input').val(recipient);
    // });

    function getModalData(userId) {
        $.ajax({
            url: "getPCInfo",
            async: true,
            type: "POST",
            data: {
                "userId": userId
            },
            // 成功后开启模态框
            success: showModal,
            error: function () {
                alert("请求失败");
            },
            dataType: "json"
        });
    }

    function showModal(data) {
        // document.getElementById("xipName").value = data.xipName;
        $("#xipName").val(data.xipName);
        $("#xipCpu").val(data.xipCpu);
        $("#xipRam").val(data.xipRam);
        $("#xipBoard").val(data.xipBoard);
        $("#xipBios").val(data.xipBios);
        $("#xipYp").val(data.xipYp);
        $("#xipXk").val(data.xipXk);
        $("#xipXsq").val(data.xipXsq);
        $("#xipMac").val(data.xipMac);
        $("#xipIp").val(data.xipIp);
        $("#xipOs").val(data.xipOs);
        $("#xipType").val(data.xipType);
        $("#fixedAssetsNo").val(data.fixedAssetsNo);
        $("#name").val(data.name);
        $("#department").val(data.department);
        $("#locationInfo").val(data.locationInfo);
        $("#tel").val(data.tel);
        $("#remark").val(data.remark);
        $("#userId").val(data.userId);

        $('#pcInfoDetailModal').modal('show');
    }

    function updateInfo() {
        var pcInfoDetailForm = document.getElementById('pcInfoDetailForm');
        pcInfoDetailForm.submit();
    }

</script>

</body>
</html>