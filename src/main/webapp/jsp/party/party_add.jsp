<%--
  Created by IntelliJ IDEA.
  User: ZRF
  Date: 2020/12/2
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员注册</title>
</head>
<body>
<form id="frmParty" name="frmParty"      method="post">
    <table width="800" border="0" align="center">
        <tr>
            <td>会员注册</td>
        </tr>
        <tr>
            <td>
                <table border="1"width="100%"cellspacing="0"cellpadding="10">
                    <tr>
                        <td align="right" width="25%">会员名称:</td>
                        <td><input type="text" name="partyName"></td>
                    </tr>
                    <tr>
                        <td align="right">会员类型:</td>
                        <td><input type="radio" name="partyType" value="0" checked/>个人会员
                            <input type="radio" name="partyType" value="1"/>机构会员
                        </td>
                    </tr>
                    <tr>
                        <td align="right">会员级别:</td>
                        <td><select name="partyLevel">
                            <option value="初级" selected>初级</option>
                            <option value="中级">中级</option>
                            <option value="高级">高级</option>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">联系电话:</td>
                        <td><input type="text" name="phone"></td>
                    </tr>
                    <tr>
                        <td align="right">联系地址:</td>
                        <td><input type="text" name="address" size="50"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <div align="center">
                    <input type="button" id="btnAdd"value="注册" onclick="add()">
                    <input type="reset" id="btnReset" value="重置">
                    <input type="button" id="btnCancel"value="取消" onclick="cancel()">
                </div>
            </td>
        </tr>
    </table>
</form>
<script>
    function add() {
        document.frmParty.action      =
            "${pageContext.request.contextPath}/partyadd";
            document.frmParty.submit();
    }
    function cancel() {
        window.location.href      =
            "${pageContext.request.contextPath}/partylist";
    }
</script>
</body>
</html>
