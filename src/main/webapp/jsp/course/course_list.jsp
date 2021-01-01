<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>课程列表</title>
    <style>
        table{
            width:77%;
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
            width: 250px;
            height: calc(100vh - 35px);
            background: #6d85ff;
            float:left;
            background-image: url("./img/1.jpg");
        }
        .div_right{
            width: 250px;
            height: calc(100vh - 35px);
            background: #6d85ff;
            float:right;
            background-image: url("./img/1.jpg");
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
            width: calc(100vw - 250px);
            height:calc(100vh - 35px - 70px);
            /*background-image: url("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603425538369&di=416939f15f43518a0f6e63617817bc5e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F64%2F52%2F01300000407527124482522224765.jpg") ;*/
        }
        .div_footer{
            width: calc(100% - 250px - 250px);
            height: 70px;
            background: aquamarine;
            float: right;/*如果没有这个他的框正常排版到了左上角，文字会嵌入浮框下面*/
        }
    </style>
</head>
<body>
<div class="div_contaitner">
    <div align="center"  class="div_head">
        课程列表&nbsp&nbsp
        <input type="button" id="btnAdd"
               value="注册" onclick="add()">

    </div>
    <div class="div_left"></div>
    <div class="div_right"></div>

    <div class="div_content">
        <table align="center" width="50%" cellspacing="0" cellpadding="5" border="1" id="mytable">
            <thead>
            <tr>
                <td>序号</td>
                <td>课程名称</td>
                <td>课程编号</td>
                <td>课程类型</td>
                <td>学时</td>
                <td>学分</td>
                <td>开课学期</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="course" items="${courselist}"
                           varStatus="varstatus">
                    <tr align="center">
                        <td>
                            <c:out value="${varstatus.index+1}"/>
                        </td>
                        <td>${course.courseTitle}</td>
                        <td>${course.courseCode}</td>
                        <td>
                            <c:if test="${course.courseType=='0'}">基础必修</c:if>
                            <c:if test="${course.courseType=='1'}">专业必修</c:if>
                            <c:if test="${course.courseType=='2'}">专业选修</c:if>
                        </td>
                        <td>${course.courseHours}</td>
                        <td>${course.courseCredit}</td>
                        <td>${course.term}</td>
                        <td>
                            <input type="button" id="btnEdit" value="修改"
                                   onclick="edit(${course.courseId})">
                            <input type="button" id="btnDel" value="删除"
                                   onclick="del(${course.courseId})">
                        </td>
                    </tr>

                </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="div_footer"></div>



    <script>
        function add() {
            window.location.href=
                "${pageContext.request.contextPath}/tocourseadd";
        }

        function edit(courseId) {
            window.location.href=
                "${pageContext.request.contextPath}/tocourseedit?courseId="+courseId;
        }
        function del(courseId) {
            if(confirm("是否删除该数据！")){
                window.location.href=
                    "${pageContext.request.contextPath}/coursedelete?courseId="+courseId;
            }
        }
    </script>


</div>
</body>
</html>
