<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ page import="cn.cxh.entity.News" %>
<%@ page import="cn.cxh.service.impl.NewsServiceImpl" %>
<%@ page import="cn.cxh.service.NewsService" %>
<%@ page import="cn.cxh.dao.impl.NewsDaoImpl" %>
<%@ page import="cn.cxh.util.MsqlDatabase" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <title>添加主题--管理后台</title>
    <link href="<%=request.getContextPath()%>/static/css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
    <div id="welcome">欢迎使用新闻管理系统！</div>
    <div id="nav">
        <div id="logo"><img src="<%=request.getContextPath()%>/static/images/logo.jpg" alt="新闻中国" /></div>
        <div id="a_b01"><img src="<%=request.getContextPath()%>/static/images/a_b01.gif" alt="" /></div>
    </div>
</div>
<div id="admin_bar">
    <div id="status">管理员： 登录  &#160;&#160;&#160;&#160; <a href="#">login out</a></div>
    <div id="channel"> </div>
</div>
<div id="main">
    <%@ include file="../layout/left.jsp" %>
    <div id="opt_area">
        <script type="text/javascript" >
            function clickdel(nid){
                if (confirm("此新闻的相关评论也将删除，确定删除吗？"))
                    window.location="../util/news?opr=delete&nid="+nid;
            }

        </script>
        <ul class="classlist">
            <%
                List<News> list=new ArrayList<>();
                System.out.println("执行");

                System.out.println("1232");

                list=new NewsDaoImpl(new MsqlDatabase().getConnection()).findNews();
                for (News news:list){
            %>
            <li><%=news.getNtitle()%><span> 作者：<%=news.getNauthor()%> &#160;&#160;&#160;&#160;
<a href='<%=request.getContextPath()%>/view/admin/news/edit.jsp?tid=<%=news.getNid()%>'>修改</a> &#160;&#160;&#160;&#160;
<a href='javascript:;' onclick='return clickdel(10)'>删除</a></span> </li>

            <li class='space'></li>
            <%}%>

        </ul>
    </div>
</div>
<div id="footer">
    <%-- 引入公共部分--%>
    <%@ include file="../layout/bom.jsp" %>
</div>
</body>
</html>
