<%@ page import="java.util.Objects" %>
<%@ page import="cn.cxh.entity.User" %>
<%@ page import="cn.cxh.service.UserService" %>
<%@ page import="cn.cxh.service.impl.UserServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/24
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
   request.setCharacterEncoding("utf-8");
    if(Objects.nonNull(request.getParameter("user"))){
        String uName=request.getParameter("user");
        String uPwd=request.getParameter("pwd");
        UserService userService=new UserServiceImpl();
        User user=new User();
        user.setuName(uName);
        user.setuPwd(uPwd);
       if(userService.addUser(user)){
                request.setAttribute("msg","注册成功！");
       }else {
                request.setAttribute("msg","注册失败！");
       }

        request.getRequestDispatcher("/msg.jsp").forward(request,response); //转发请求 forward方法把请求信息和响应信息传过去
    }



%>



<form action="reg.jsp" method="post" >
    用户名：<input name="user">
    密码：<input type="password" name="pwd">
    <input type="submit" value="注册">
</form>



</body>
</html>
