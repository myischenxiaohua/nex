<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/22
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"


%>
<%@ include file="cheackLogin.jsp"%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <!-- html注释 -->
<%--  <%! //！可以嵌入声明方法--%>

<%--      public boolean isNumber(int n) {  //被1和本身整除。--%>
<%--          boolean fla=false;--%>
<%--          for (int i = 2; i <n; i++) {                    //  3    5 1-4--%>
<%--              // i 1 2--%>
<%--              if (n % i == 0) {--%>
<%--                  fla=true;--%>
<%--              }--%>
<%--          }--%>
<%--          return fla;--%>
<%--      }--%>

<%--      boolean isN(int n){--%>
<%--          for (int i=3;i<Math.sqrt(n);i=i+2){--%>
<%--              if(n%i==0){--%>
<%--                  return false;--%>
<%--              }--%>
<%--          }--%>
<%--          return true;--%>
<%--      }--%>


<%--      String isYear(){--%>
<%--          String st="";--%>
<%--          for (int i=2000;i<2013;i++){--%>
<%--              if(i%4==0&&i%100!=0||i%400==0){--%>
<%--                  st=Integer.toString(i);--%>
<%--              }--%>
<%--          }--%>

<%--          return st;--%>
<%--      }--%>

<%--  %>--%>

<%--  今天是：--%>
<%--      <%--%>

<%--        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");--%>
<%--      String tm=simpleDateFormat.format(new Date());--%>



<%--     int sum=0;--%>
<%--     int sm=0;--%>
<%--     for (int i=2;i<4;i++){--%>

<%--       if(!isNumber(i)){--%>
<%--         sum+=i;--%>
<%--       }--%>

<%--         if(isN(i)){--%>
<%--             sm+=i;--%>
<%--         }--%>


<%--     }--%>



<%--      %>--%>
<%--  1-100素数的和：--%>
<%--  <%=sum%>--%>
<%--  第二种:--%>
<%--  <%=sm%>--%>

<%--  是否是闰年：<%=isYear()%>--%>

<%=session.getId()%>


  登陆成功，欢迎<%=session.getAttribute("user")%>来到网易新闻

  </body>
</html>
