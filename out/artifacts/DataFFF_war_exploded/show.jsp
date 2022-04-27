<%--
  Created by IntelliJ IDEA.
  User: 10706
  Date: 2022/4/17
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
    String path = request.getContextPath() ;
%>
<html>
<head>
    <title>Title</title>

</head>

<script type="text/javascript">
    function gotoReg(){
        location.href = "/modify.jsp"
    }
</script>

<center>
    <body style="text-align: center">
    <%
        //      这里用于显示数据
        request.getAttribute("list") ;
    %>
    <div style="height: 50px">
        欢迎你${pname}
    </div>
    <div><input type="button" value="注册" onclick="gotoReg()"></div>
    <hr/>
    <table>
        <tr>
            <td>人员编号</td>
            <td>人员姓名</td>
            <td>性别</td>
            <td>出生年月日</td>
            <td>民族</td>
            <td>籍贯</td>
            <td>政治面貌</td>
            <td>工作单位</td>
            <td>职称</td>
            <td>学历</td>
            <td>现任职务</td>
            <td>社会职务</td>
            <td>参加工作时间</td>
            <td>加入党派时间</td>
            <td>获得荣誉</td>
            <td>培训情况</td>
            <td>参政议政情况</td>
            <td>联系方式</td>
            <td>备注</td>
        </tr>
        <c:forEach items="${personList}" var = "person">
            <tr>
                <td>${person.pid}</td>
                <td>${person.pname}</td>
                <td>${person.psex}</td>
                <td>${person.pbirth}</td>
                <td>${person.pnational}</td>
                <td>${person.pnativeplace}</td>
                <td>${person.ppoliticalstatus}</td>
                <td>${person.pworkplace}</td>
                <td>${person.pzhicheng}</td>
                <td>${person.pxueli}</td>
                <td>${person.pcurrentposition}</td>
                <td>${person.psocialwork}</td>
                <td>${person.pjoinworktime}</td>
                <td>${person.pjoinpartytime}</td>
                <td>${person.phonor}</td>
                <td>${person.ptraining}</td>
                <td>${person.pcanzhengyizheng}</td>
                <td>${person.pcontactnum}</td>
                <td>${person.pinfor}</td>
                <td><a href="<%=path%>/undatePersonServlet?pid=${person.pid}">修改</a></td>
                <td><a href="<%=path%>/DeletePersonByIdServlet?pid=${person.pid}" onclick="if(confirm('是否确定删除？')===false)return false">删除</a></td>
            </tr>
        </c:forEach>
    </table>
    </body>
</center>
</html>
