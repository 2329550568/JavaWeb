<%@ page import="RainManage.entity.rainquality" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="RainManage.service.rainservice" %>
<%@ page import="RainManage.service.serviceimpl.rainserviceimpl" %><%--
  Created by IntelliJ IDEA.
  User: MyPC
  Date: 2020-1-5 0005
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  List<rainquality>list=new ArrayList<>();
  rainservice rv=new rainserviceimpl();
  list=rv.sele();
  request.setAttribute("list1",list);
%>
<script src="js/jquery-1.12.4.js"></script>
<html>
<script>
  $(function () {

  $(".dele").click(function () {
    var Id=$("input[name=Id]").val();
   var boole= confirm("确定删除吗？");
    if (boole){
    location.href="http://localhost:6060/35284323_war_exploded/delede";
    }
  })


  })
</script>

  <head>
    <title>雨量检测系统</title>
  </head>
  <script>

  </script>

  <body>


  <form action="">
    <h3>雨量检测系统</h3>
    <table border="1px">
      <tr>
        <td>序号</td>
      <td>区域名称</td>
      <td>监测时间</td>
      <td>雨量值</td>
      <td>监测站</td>
      <td>站点地址</td>
      <td>操作</td>
      </tr>

      <c:forEach items="${list1}" var="lit">
          <tr>
            <td name="Id">${lit.id}</td>
            <td>${lit.districtName}</td>
            <td>${lit.monitorTime}</td>
            <td>${lit.rain}</td>
            <td>${lit.monitoringStation}</td>
            <td>${lit.monitoringAddress}</td>
            <td><a class="dele">删除</a></td>
          </tr>
      </c:forEach>
    </table>
    <tr><a href="inse.jsp" id="inse">新增雨量检测信息</a></tr>
</form>

  </body>
</html>
