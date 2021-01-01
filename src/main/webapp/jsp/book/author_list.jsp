<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html> <head>
    <title>作者列表</title>
</head>
<body> <table width="60%" border="0" align="center">
    <tr>
        <td align="left">
            作者列表&nbsp;&nbsp;&nbsp;
            <input type="button" name="btnadd"
                   value="添加" onclick="authoradd()">
        </td>
    </tr>
    <tr>
        <td>
            <table width="100%"
                   border="1"
                   cellpadding="5"
                   cellspacing="0"
                   align="center">
                <tr>
                    <td width="10%" align="center">序号</td>
                    <td width="25%" align="center">作者名称</td>
                    <td width="10%" align="center">性别</td>
                    <td width="25%" align="center">出⽣⽇期</td>
                    <td width="15%" align="center">籍贯</td>
                    <td width="15%" align="center">操作</td>
                </tr>
                <c:forEach var="author" items="${authorlist}"
                           varStatus="vstatus">
                <tr>
                    <td align="center">${vstatus.index+1}</td>
                    <td>${author.name}</td>
                    <td>${author.sex}</td>
                    <!--使⽤fmt对⽇期进⾏格式化-->
                    <td align="center">
                        <fmt:formatDate value="${author.birthDate}"
                                        pattern="yyyy-MM-dd"/>
                    </td>
                    <td align="center">${author.birthPlace}</td>
                    <td align="center">
                        <input type="button" name="btnedit"
                               value="修改"
                               onclick="authoredit(${author.id})">
                        <input type="button" name="btndelete"
                               value="删除"
                               onclick="authordel(${author.id})">
                    </td>
                </tr>
                </c:forEach>
            </table>
        </td>
    </tr>
</table> <script language="JavaScript">
    //添加作者
    function authoradd() {

        document.location.replace("${pageContext.request.contextPath}/toauthoradd");
    }
    //修改作者信息
    function authoredit(id) {

    }
    //删除作者
    function authordel(id) {

    }
</script>
</body>
</html>
