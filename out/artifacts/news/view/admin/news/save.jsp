<%@ page import="cn.cxh.dao.impl.NewsDaoImpl" %>
<%@ page import="cn.cxh.entity.News" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/26
  Time: 11:57
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
    int tid=request.getParameter("tid")!=null?Integer.parseInt(request.getParameter("tid")):0;
    int ntid=Integer.parseInt(request.getParameter("ntid"));
    String ntitle=request.getParameter("ntitle");
    String nauthor=request.getParameter("nauthor");
    String nsummary=request.getParameter("nsummary");
    String ncontent=request.getParameter("ncontent");
    News news =new News();
    news.setNtid(ntid);
    news.setNtitle(ntitle);
    news.setNauthor(nauthor);
    news.setNsummary(nsummary);
    news.setNcontent(ncontent);
    NewsDaoImpl newsDao=new NewsDaoImpl();
    if(tid>0){
        news.setNid(tid);
        news.setNmodifydate(new Date());
        newsDao.updateNews(news);

        //更新
    }else {
        newsDao.insertNews(news);
        //保存
    }

    response.sendRedirect(request.getContextPath()+"/view/admin/index.jsp");

%>

</body>
</html>
