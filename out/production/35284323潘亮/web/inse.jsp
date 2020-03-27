<%--
  Created by IntelliJ IDEA.
  User: MyPC
  Date: 2020-1-5 0005
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="js/jquery-1.12.4.js"></script>
<script>
    $(function () {
        $("#trs td").css({"display":"block","height":"30px"})
            var Name=$("input[name=Name]").val();
            var sj=$("input[name=sj]").val();
            var yl=$("input[name=yl]").val();
            var jcz=$("input[name=jcz]").val();
            var dz=$("input[name=dz]").val();
        $("#fh").click(function () {
            location.href="http://localhost:6060/35284323_war_exploded/index.jsp";
        })
    })
</script>
<html>
<head>
    <title>新增操作</title>
</head>
<body>
<form action="http://localhost:6060/35284323_war_exploded/insede">
    <h3>新增雨量监测信息</h3>
    <table>
        <tr id="trs">
         <td>区域名称：<input type="text" name="Name"></td>
        <td>监测时间：<input type="text" name="sj"></td>
        <td>雨量值：<input type="text" name="yl"></td>
        <td>监测站：<input type="text" name="jcz"></td>
        <td>站点地址：<input type="text" name="dz"></td>
        </tr>
    </table>
    <input type="submit" value="提交">
    <input type="button" value="重置" id="cz">
    <input type="button" value="返回" id="fh">
</form>

</body>
</html>
