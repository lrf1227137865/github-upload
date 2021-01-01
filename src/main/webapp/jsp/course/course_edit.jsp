<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>课程信息修改</title>
    <style>
        table{
            width:70%;
            height: 100%;
        }
        thead th:nth-child(1){
            width: 25%;
        }
        thead th:nth-child(2){
            width: 25%;
        }
        thead th:nth-child(3){
            width: 25%;
        }
        thead th:nth-child(4){
            width: 25%;
        }
        /*单元格*/
        th,td{
            padding: 9px;
            text-align: right;
        }
        /*斑马线*/
        tbody tr:nth-child(even){
            background-color:#bfc2c3;
        }
        tbody tr:nth-child(odd){
            background-color: #ffffff;
        }
        /*表头表尾*/
        thead{
            background-color: #717D85;
        }
        tfoot{
            background-color: #bfc2c3;
        }

        span{
            align:bottom;
        }
        body{
            margin: 0;
            padding: 0;
        }
        .div_contaitner{
            width: 100vw;
            height: 100vh;
            border: 1px solid red;
            text-align: left;
            margin: auto;
        }
        .div_head{
            height:35px;
            width: 100%;
            background: aquamarine;

        }
        .div_left{
            width: 300px;
            height: calc(100vh - 35px);
            background: #6d85ff;
            float:left;
            background-image: url("./img/1.jpg");
        }
        .div_right{
            width: 300px;
            height: calc(100vh - 35px);
            background: #6d85ff;
            float:right;
            background-image: url("./img/1.jpg");;
        }
        /*.div_middle{*/
        /*    width: calc(100% - 300px);*/
        /*    height: calc(100vh - 65px - 50px);*/
        /*    border: 1px solid red;*/
        /*    float: right;*/
        /*}*/
        .div_content
        {
            border: #eb070e 1px solid;
            width: calc(100vw - 300px);
            height:calc(100vh - 35px - 70px);
            /*background-image: url("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603425538369&di=416939f15f43518a0f6e63617817bc5e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F64%2F52%2F01300000407527124482522224765.jpg") ;*/
        }
        .div_footer{
            width: calc(100% - 300px - 300px);
            height: 70px;
            background: aquamarine;
            float: right;/*如果没有这个他的框正常排版到了左上角，文字会嵌入浮框下面*/
        }
    </style>
</head>
<body>
<form id="frmCourse" name="frmCourse"   action="${pageContext.request.contextPath}/courseedit"   method="post">
    <input type="hidden" name="courseId" value="${course.courseId}">
<div align="center" class="div_head">
    课程信息修改
</div>
<div class="div_left"></div>
<div class="div_right"></div>
<div class="div_content">
    <table border="1" id="edittable" align="center" cellpadding="5" cellspacing="0" width="50%">
        <tbody>
        <tr>
            <td align="right">课程名称：</td>
            <td colspan="3"><input type="text" name="courseTitle"
                                   value="${course.courseTitle}"></td>
        </tr>
        <tr>
            <td align="right">课程编号：</td>
            <td colspan="3"><input type="text" name="courseCode" value="${course.courseCode}"></td>
        </tr>
        <tr>
            <td align="right">课程结构：</td>
            <td colspan="3">
                <input type="radio" name="courseType" value="0">基础必修
                <input type="radio" name="courseType" value="1" checked>专业必修
                <input type="radio" name="courseType" value="2">专业选修
            </td>
        </tr>
        <tr>
            <td align="right">学时：</td>
            <td><input type="text" name="courseHours" id="courseHours" value="${course.courseHours}"></td>
            <td>学分：</td>
            <td><input type="text" name="courseCredit" id="courseCredit" value="${course.courseCredit}"></td>
        </tr>
        <tr>
            <td align="right">开课学期：</td>
            <td colspan="3">
                <input type="text" size="80" name="term" id="term" value="${course.term}">
            </td>
        </tr>
        <tr>
            <td align="right">课程简介：</td>
            <td colspan="3">
                <textarea name="courseDesc" id="courseDesc" rows="6" cols="80"></textarea>
            </td>
        </tr>
        </tbody>
        <tfoot>
        <tr>
            <td align="center" colspan="4">
                <input type="submit" id="btnSave"value="保存" >
                <input type="reset" id="btnReset" value="重置">
                <input type="button" id="btnCancel"value="取消" onclick="cancel()">
            </td>
        </tr>
        </tfoot>
    </table>
</div>
<div class="div_footer"></div>

</form>
<script>
    function cancel() {
        window.location.href      =
            "${pageContext.request.contextPath}/courselist";
    }




</script>

</body>
</html>
