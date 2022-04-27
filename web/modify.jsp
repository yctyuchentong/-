<%--
  Created by IntelliJ IDEA.
  User: 10706
  Date: 2022/4/18
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() ;
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/modify.css">

</head>


<body>
<div class="head">
    <h1>统战部人员管理系统</h1>
    <div class="weather">
        <span id="showTime"></span>
    </div>
    <script>
        var t = null;
        t = setTimeout(time, 1000);//開始运行
        function time() {
            clearTimeout(t);//清除定时器
            dt = new Date();
            var y = dt.getFullYear();
            var mt = dt.getMonth() + 1;
            var day = dt.getDate();
            var h = dt.getHours();//获取时
            var m = dt.getMinutes();//获取分
            var s = dt.getSeconds();//获取秒
            document.getElementById("showTime").innerHTML = y + "年" + mt + "月" + day + "日" + "-" + h + "时" + m + "分" + s + "秒";
            t = setTimeout(time, 1000); //设定定时器，循环运行
        }
    </script>
</div>
<div class="news_type_list">
    <h2>人员管理</h2>
    <ul>
        <li><a href="#">信息查询</a></li>
        <li class="cur"><a href="#">人员注册</a></li>
        <li><a href="#">媒体报道</a></li>
        <li><a href="#">活动专题</a></li>
        <li><a href="#">精彩视频</a></li>
        <li><a href="#">资源下载</a></li>
        <li><a href="#">院部内刊</a></li>
    </ul>
</div>


<div class="content">

    <form action="<%=path%>/DoUpdateOrAddPersonServlet">
        <table>
            <caption>人员注册</caption>
            <tr>
                <td class="col1">人员编号：</td>
                <td><input type="text" name = "pid" readonly="readonly" hidden="hidden" value="${person.pid}"></td>
                <td></td>
                <td class="col1">姓名：</td>
                <td><input type="text" name = "pname" value="${person.pname}"></td>
            </tr>

            <tr><td class="col1">性别：</td>
                <td><input type="text" name = "psex" value="${person.psex}">
                <td></td>
                <td class="col1">出生年月日：
                <td><input type="date" name="pbirth" value="${person.pbirth}"></tr>

            <tr>
                <td class="col1">民族：</td>
                <td><input type="text" name="pnational" value="${person.pnational}"></td>

                <td></td>

                <td class="col1"> 籍贯：</td>
                <td><input type="text" name="pnativeplace" value="${person.pnativeplace}"></td>
            </tr>
            <tr>
                <td class="col1">政治面貌：</td>
                <td><input type="text" name="ppoliticalstatus" value="${person.ppoliticalstatus}"></td>
                <td></td>
                <td class="col1">工作单位：</td>
                <td><input type="text" name="pworkplace" value="${person.pworkplace}"></td>
            </tr>

            <tr>
                <td class="col1">职称：</td>
                <td><input type="text" name="pzhicheng" value="${person.pzhicheng}"></td>

                <td></td>

                <td class="col1">学历：</td>
                <td><input type="text" name="pxueli" value="${person.pxueli}"></td></tr>

            <tr>
                <td class="col1">现任职务：</td>
                <td><input type="text" name="pcurrentposition" value="${person.pcurrentposition}"></td>

                <td></td>

                <td class="col1">    社会职务：</td>
                <td><input type="text" name="psocialwork" value="${person.psocialwork}"></td>
            </tr>

            <tr>
                <td class="col1">参加工作时间：</td>
                <td><input type="date" name="pjoinworktime" value="${person.pjoinworktime}"></td>

                <td></td>

                <td class="col1">   加入党派时间：</td>
                <td><input type="date" name="pjoinpartytime" value="${person.pjoinpartytime}"></td></tr>

            <tr>
                <td class="col1">获得荣誉：</td>
                <td><input type="text" name="phonor" value="${person.phonor}"></td>

                <td></td>

                <td class="col1">   培训情况：</td>
                <td><input type="text" name="ptraining" value="${person.ptraining}"></td></tr>

            <tr>
                <td class="col1">参政议政情况：</td>
                <td><input type="text" name="pcanzhengyizheng" value="${person.pcanzhengyizheng}"></td>

                <td></td>

                <td class="col1">    联系方式：</td>
                <td><input type="text" name="pcontactnum" value="${person.pcontactnum}"></td></tr>

            <tr>
                <td class="col1">备注 ：</td>
                <td><input type="text" name="pinfor" value="${person.pinfor}"></td></tr>

        </table>

        <input class="btn btn-primary" type="submit" value="确定">
    </form>
</div>

</body>

</html>