<%--
  Created by IntelliJ IDEA.
  User: ZRF
  Date: 2020/11/26
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书注册</title>
</head>
<body>
<form name="frmbook" method="post"
      action="${pageContext.request.contextPath}/bookadd">
    <table width="60%" border="0" align="center">
        <tr>
            <td align="left">
                添加图书
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" border="1"
                       cellpadding="5" cellspacing="0" align="center">
                    <tr>
                        <td width="20" align="right">图书名称</td>
                        <td><input type="text" name="name" size="30"></td>
                    </tr>
                    <tr>
                        <td align="right">出版社</td>
                        <td><input type="text" name="publisher" size="30">
                        </td>
                    </tr>
                    <tr>
                        <td align="right">价格</td>
                        <td><input type="text" name="price"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <input type="submit" value="保存">&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</form>
</body>
</html>
