<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加作者</title>
</head> <body> <form name="frmauthor" method="post"
                     action="${pageContext.request.contextPath}/authoradd">
    <table width="60%" border="0" align="center">
        <tr>
            <td align="left">
                添加作者&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%"
                       border="1" cellpadding="5"
                       cellspacing="0" align="center">
                    <tr>
                        <td width="20" align="right">作者名称</td>
                        <td><input type="text" name="name" size="30"></td>
                    </tr>
                    <tr>
                        <td width="20" align="right">性别</td>
                        <td>
                            <input type="radio" name="sex" value="男" checked> 男&nbsp;&nbsp;
                            <input type="radio" name="sex" value="⼥" >⼥
                        </td>
                    </tr>
                    <tr>
                        <td align="right">出⽣⽇期</td>
                        <td>
                            <input type="text"
                                   name="birthDate"
                                   size="30">格式:2000-01-01
                        </td>
                    </tr>
                    <tr>
                        <td align="right">籍贯</td>
                        <td><input type="text" name="birthPlace"></td>
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
