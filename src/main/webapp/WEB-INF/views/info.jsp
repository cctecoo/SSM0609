<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>个人电脑信息</title>
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="static/jquery/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script>
    <%--    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

    <style type="text/css">

        .body1 {
            background-color: #fffff5;
        }

        /*主标题*/
        .p2 {
            font-family: 宋体;
            font-size: 10pt;
            color: #ffffff;
            text-align: left;
        }

        /*副标题*/
        .p3 {
            font-family: 宋体;
            font-size: 9pt;
        / / color: #000000;
        / / text-align: right;
        }

        /*按钮*/
        .button1 {
            cursor: hand;
            font-size: 9pt;
            font-family: 宋体;
            border: thin outset #B7BACC;
            height: 20px;
        }

        .text1 {
            font-size: 9pt;
            font-family: 宋体;
            /*background-color: #FFF0F8;*/
            /*color: #00007D;*/
        }

        .checkbox1 {
            /*none;*/
        }

        .textarea1 {
            font-size: 9pt;
            font-family: 宋体;
            /*background-color: #FFF0F8;*/
            color: #011098;
            border: thin groove #B7BACC;
        }

        /*table单元格*/
        td {
            font-family: 宋体;
            font-size: 9pt;
            /*color: a3;*/
        }

        /*使table线变细*/
        table {
            border-collapse: collapse
        }
    </style>


    <META content="MSHTML 6.00.2800.1264" name=GENERATOR>
</head>
<body>
<form action="${pageContext.request.contextPath}/add" id="infoForm" method=post>
    <input type="hidden" name="command" value="xipadd">

    <table width="95%" border="0" cellpadding="0" cellspacing="0">

        <tr>
            <td height="26">
                <div align="right">
                    机器名称:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipName" type="text" class="text1" id="xipName"
                       size="80" maxlength="100" readonly="true" value="出错！请设置：一、必须用IE浏览器；">
            </td>
        </tr>
        <tr>
            <td height="26">
                <div align="right">
                    CPU:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipCpu" type="text" class="text1" id="xipCpu"
                       size="80" maxlength="100" readonly="true"
                       value="              二、IE菜单->工具->Internet选项->安全->自定义级别->对未标记为可安全">
            </td>
        </tr>

        <tr>
            <td height="26">
                <div align="right">
                    内存:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipRam" type="text" class="text1" id="xipRam"
                       size="80" maxlength="100" readonly="true"
                       value="              执行脚本的ActiveX控件初始化并执行脚本-选'提示'，然后刷新页面">
            </td>
        </tr>

        <tr>
            <td height="26">
                <div align="right">
                    主板:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipBoard" type="text" class="text1" id="xipBoard"
                       size="80" maxlength="100" readonly="true" value="">
            </td>
        </tr>
        <tr>
            <td height="26">
                <div align="right">
                    BIOS:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipBios" type="text" class="text1" id="xipBios"
                       size="80" maxlength="100" readonly="true" value="">
            </td>
        </tr>


        <tr>
            <td height="26">
                <div align="right">
                    硬盘:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipYp" type="text" class="text1" id="xipYp"
                       size="80" maxlength="100" readonly="true" value="">
            </td>
        </tr>


        <tr>
            <td height="26">
                <div align="right">
                    显卡:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipXk" type="text" class="text1" id="xipXk"
                       size="80" maxlength="100" readonly="true" value="">
            </td>
        </tr>
        <tr>
            <td height="26">
                <div align="right">
                    显示器:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipXsq" type="text" class="text1" id="xipXsq"
                       size="80" maxlength="100" readonly="true" value="">
            </td>
        </tr>

        <tr>
            <td height="26">
                <div align="right">
                    网卡MAC:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipMac" type="text" class="text1" id="xipMac"
                       size="80" maxlength="100" readonly="true" value="">
            </td>
        </tr>
        <tr>
            <td height="26">
                <div align="right">
                    IP:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipIp" type="text" class="text1" id="xipIp"
                       size="80" maxlength="100" readonly="true" value="">
            </td>
        </tr>
        <tr>
            <td height="26">
                <div align="right">
                    操作系统:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="xipOs" type="text" class="text1" id="xipOs"
                       size="80" maxlength="100" readonly="true" value="">
            </td>
        </tr>

        <tr>
            <td colspan="2" height="36"></td>

        </tr>


        <tr>
            <td height="26">
                <div align="right">
                    类型:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input type="radio" name="xipType" value="台式机" checked>台式机&nbsp;
                <input type="radio" name="xipType" value="笔记本" checked>笔记本&nbsp;
            </td>
        </tr>

        <tr>
            <td height="26">
                <div align="right">
                    固定资产编号:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="fixedAssetsNo" id="fixedAssetsNo" type="text" size="72">
            </td>
        </tr>
        <tr>
            <td height="26">
                <div align="right">
                    使用者姓名:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="name" id="name" type="text" size="72">
            </td>
        </tr>
        <tr>
            <td height="26">
                <div align="right">
                    所属部门:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="department" id="department" type="text" size="72">
            </td>
        </tr>
        <tr>
            <td height="26">
                <div align="right">
                    所在属地:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="locationInfo" id="locationInfo" type="text" size="72">
            </td>
        </tr>
        <tr>
            <td height="26">
                <div align="right">
                    电话:&nbsp;
                </div>
            </td>
            <td width="78%">
                <input name="tel" id="tel" type="text" size="72">
            </td>
        </tr>
        <tr>
            <td height="26">
                <div align="right">
                    备注:&nbsp;
                </div>
            </td>
            <td width="78%">
                <textarea name="remark" id="remark" rows="6" cols="71"></textarea>
            </td>
        </tr>


        <tr>
            <td colspan=2></td>
        </tr>
        <tr>
            <td colspan=2></td>
        </tr>
        <tr>
            <td></td>
            <td width="40%" align="center">
                <input type="button" value="将此资料提交信息中心" size="80" onclick="submitForm()">
                <input type="button" value="人员电脑详细信息" size="80" onclick="toList()">
            </td>
        </tr>


    </table>


</form>


<script type="text/javascript">
    try {
        var locator = new ActiveXObject("WbemScripting.SWbemLocator");
        var service = locator.ConnectServer(".");
    } catch (e) {
        alert('出错了！请按照网页上的说明进行设置，设置完后再刷新此页面');
    }

    info = pcInfo();

    //		document.write(info);

    //网页提交
    function submitForm() {
        var infoForm = document.getElementById('infoForm');
        if (infoForm.xipName.value == '出错！请设置：一、必须用IE浏览器；') {
            alert('出错，不能提交！请按上面的说明设置Internet选项，然后刷新页面');
            return;
        }
        if (!infoForm.name.value) {
            alert('请填写本机的使用者姓名！');
            return;
        }
        // var xipType = $("input[name='xipType']:checked").val();
        // infoForm.action = document.location.href + "post";
        infoForm.submit();
    }

    function toList() {
        window.location.href = "list";
    }

    //CPU 信息
    function cpuInfo() {
        var properties = service.ExecQuery("SELECT * FROM Win32_Processor");
        var e = new Enumerator(properties);
        var info = "<table border=1>";
        info += "<tr  bgcolor='#CDEDED' style='font-weight:bold;' ><td width='450' >CPU 信息</td></tr>";
        for (; !e.atEnd(); e.moveNext()) {
            var p = e.item();
            info += "<tr><td >主机名称：" + p.SystemName + "</td></tr>";
            info += "<tr><td >CPU型号：" + p.Name + "," + p.NumberOfCores + "核," + p.MaxClockSpeed + "Hz" + "</td></tr>";
            infoForm.xipName.value = "" + p.SystemName;
            infoForm.xipCpu.value = "" + p.Name + "," + p.NumberOfCores + "核," + p.MaxClockSpeed + "Hz";

        }
        info += "</table>";
        return info;
    }

    //主板信息
    function mainBoard() {
        var properties = service.ExecQuery("SELECT * FROM Win32_BaseBoard");
        var e = new Enumerator(properties);
        var info = "<table border=1>";
        info += "<tr bgcolor='#CDEDED' style='font-weight:bold;'><td width='450'>主板信息 </td></tr>";
        for (; !e.atEnd(); e.moveNext()) {
            var p = e.item();
            info += "<tr><td >制造商：" + p.Manufacturer + "</td></tr>";
            infoForm.xipBoard.value = "制造商：" + p.Manufacturer;

        }
        info += "</table>";
        return info;
    }

    //BIOS信息
    function biosinfo() {
        var properties = service.ExecQuery("SELECT * FROM Win32_BIOS");
        var e = new Enumerator(properties);
        var info = "<table border=1>";
        info += "<tr bgcolor='#CDEDED' style='font-weight:bold;'><td width='450'>bios信息 </td></tr>";
        for (; !e.atEnd(); e.moveNext()) {
            var p = e.item();
            info += "<tr><td >日期：" + p.ReleaseDate + "</td></tr>";
            infoForm.xipBios.value = "品牌机序列号: " + p.SerialNumber + "  BIOS日期: " + p.ReleaseDate;
        }
        info += "</table>";
        return info;
    }


    //获取Ram信息
    function raminfo() {
        var system = new Enumerator(service.ExecQuery("SELECT * FROM Win32_ComputerSystem")).item();

        var physicMenCap = Math.ceil(system.TotalPhysicalMemory / 1024 / 1024);
        //内存信息
        var memory = new Enumerator(service.ExecQuery("SELECT * FROM Win32_PhysicalMemory"));
        for (var mem = [], i = 0; !memory.atEnd(); memory.moveNext()) {
            mem[i++] = {cap: memory.item().Capacity / 1024 / 1024, speed: memory.item().Speed};
        }
        var info = "<table border=1>";
        info += "<tr bgcolor='#CDEDED' style='font-weight:bold;' ><td width='450'>内存信息 </td></tr>";
        info += "<tr style='color: red'><td >内存总量：";
        memDX = 0;
        for (var mi = 0; mi < mem.length; mi++) {
            memDX += mem[mi].cap;
        }
        info += memDX + "M</td></tr>";
        info += "<tr style='color: red'><td >可用物理内存：" + physicMenCap + "M</td></tr>";
        info += "</table>";
        infoForm.xipRam.value = "总内存: " + memDX + "; 可用物理内存: " + physicMenCap;
        //infoForm.xipRammin.value=physicMenCap;
        return info;
    }

    //获取网络连接信息
    function ipinfo() {
        var properties = service.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration Where IPEnabled=TRUE");
        var e = new Enumerator(properties);
        var info = "<table border=1>";
        info += "<tr bgcolor='#CDEDED' style='font-weight:bold;' ><td width='450'>网络连接信息：</td></tr>";
        var i = 1;
        for (; !e.atEnd(); e.moveNext()) {
            var p = e.item();
            info += "<tr style='color: red'><td >MAC地址" + i + "：" + p.MACAddress + "</td></tr>";
            info += "<tr style='color: red'><td >IP地址" + i + "：" + p.IPAddress(0) + "</td></tr>";
            i++;
            infoForm.xipMac.value = "" + p.MACAddress;
            infoForm.xipIp.value = "" + p.IPAddress(0);

        }
        info += "</table>";
        return info;
    }

    // 获取操作系统信息
    function osinfo() {
        var properties = service.ExecQuery("SELECT * FROM Win32_OperatingSystem");
        var e = new Enumerator(properties);
        var info = "<table border=1>";
        info += "<tr bgcolor='#CDEDED' style='font-weight:bold;' ><td width='450'>OS信息：</td></tr>";
        var i = 1;
        for (; !e.atEnd(); e.moveNext()) {
            var p = e.item();
            info += "<tr style='color: red'><td>" + p.Caption + "</td></tr>";
            i++;
            infoForm.xipOs.value = "" + p.Caption;
        }
        info += "</table>";
        return info;
    }


    //硬盘信息
    function yingpan() {
        var properties = service.ExecQuery("SELECT * FROM Win32_DiskDrive");  //Win32_DiskDrive
        var e = new Enumerator(properties);
        var info = "";
        for (; !e.atEnd(); e.moveNext()) {
            var p = e.item();

            infoForm.xipYp.value = "" + p.Size.substr(0, p.Size.length - 9) + "G,型号：" + p.Model;
        }
        return info;

    }

    //显卡信息
    function xianka() {
        var properties = service.ExecQuery("SELECT * FROM Win32_VideoController");  //Win32_DiskDrive
        var e = new Enumerator(properties);
        var info = "";
        for (; !e.atEnd(); e.moveNext()) {
            var p = e.item();

            infoForm.xipXk.value = "" + p.Name + " 厂商: " + p.AdapterCompatibility;
        }

        return info;
    }

    //显示器信息
    function xianshiqi() {
        var properties = service.ExecQuery("SELECT * FROM Win32_DesktopMonitor");  //Win32_DiskDrive
        var e = new Enumerator(properties);
        var info = "";
        for (; !e.atEnd(); e.moveNext()) {
            var p = e.item();

            infoForm.xipXsq.value = "" + p.Name + " 厂商: " + p.MonitorManufacturer;
        }

        return info;
    }

    /*
    fnShowPrcName("Win32_StartupCommand")	// 系统自动启动程序
    */
    function pcInfo() {	//所有信息
        var info = "";
        info += cpuInfo();
        info += raminfo();
        info += mainBoard();
        info += biosinfo();
        info += ipinfo();
        info += osinfo();
        info += yingpan();
        info += xianka();
        info += xianshiqi();

        return info;
    }

</script>

</body>
</html>
