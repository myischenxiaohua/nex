<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/26
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="cn.cxh.dao.impl.TopicDaoImpl" %>
<%@ page import="cn.cxh.entity.Topic" %>
<%@ page import="cn.cxh.dao.impl.NewsDaoImpl" %>
<%@ page import="cn.cxh.entity.News" %>

<!DOCTYPE html>
<%@include file="/view/layout/top.jsp" %>
<script type="text/javascript" charset="utf-8" src="<%=request.getContextPath()%>/view/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=request.getContextPath()%>/view/ueditor/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="<%=request.getContextPath()%>/view/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
    function check(){
        var ntitle = document.getElementById("ntitle");
        var nauthor = document.getElementById("nauthor");
        var nsummary = document.getElementById("nsummary");
        var ncontent = document.getElementById("ncontent");

        if(ntitle.value == ""){
            alert("标题不能为空！！");
            ntitle.focus();
            return false;
        }else if(nauthor.value == ""){
            alert("作者不能为空！！");
            nauthor.focus();
            return false;
        }else if(nsummary.value == ""){
            alert("摘要不能为空！！");
            nsummary.focus();
            return false;
        }else if(ncontent.value == ""){
            alert("内容不能为空！！");
            ncontent.focus();
            return false;
        }
        return true;
    }
</script>

<%
    int tid=Integer.parseInt(request.getParameter("tid")); //获取修改的新闻id

%>
<div id="main">
    <%@include file="/view/layout/left.jsp" %>
    <div id="opt_area">
        <h1 id="opt_type"> 编辑新闻： </h1>
        <form  action="save.jsp" method="post">
            <p>
                <label> 主题 </label>
                <select name="ntid">
                    <%

                        NewsDaoImpl newsDao=new NewsDaoImpl();
                       News news= newsDao.findById(tid);

                        TopicDaoImpl topicDao=new TopicDaoImpl();
                        for (Topic topic:topicDao.fiandAll()){
                            if(news.getNtid()==topic.getTid()){%>
                                <option value='<%=topic.getTid()%>' selected="selected"><%=topic.getTname()%></option>
                           <% }else {%>
                                <option value='<%=topic.getTid()%>'><%=topic.getTname()%></option>

                          <% }
                        }
                    %>

                </select>
            </p>
            <p>
                <label> 标题 </label>
                <input name="ntitle" id="ntitle" type="text" class="opt_input" value="<%=news.getNtitle()%>"/>
            </p>
            <p>
                <label> 作者 </label>
                <input name="nauthor" id="nauthor" type="text" class="opt_input" value="<%=news.getNauthor()%>"/>
            </p>
            <p>
                <label> 摘要 </label>
                <textarea name="nsummary" id="nsummary" cols="40" rows="3"><%=news.getNsummary()%></textarea>
            </p>
            <p>
                <label> 内容 </label>
                <textarea name="ncontent" id="ncontent" style="width:600px;height:500px;"><%=news.getNcontent()%></textarea>
            </p>
<%--            <p>--%>
<%--                <label> 上传图片 </label>--%>
<%--                <input name="file" id="file" type="file" class="opt_input" />--%>
<%--            </p>--%>
            <input type="hidden" name="tid" value="<%=tid%>">
            <input type="submit"  value="提交" class="opt_sub" />
            <input type="reset" value="重置" class="opt_sub" />
        </form>
        <h1 id="opt_type">
            修改新闻评论：
        </h1>
        <table width="80%" align="left">
<%--            <c:choose>--%>
<%--                <c:when test="${empty news.comments}">--%>
<%--                    <tr><td colspan="6"> 暂无评论！ </td></tr>--%>
<%--                    <tr>--%>
<%--                        <td colspan="6"><hr />--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <c:forEach items="${news.comments}" var="comment">--%>
<%--                        <tr>--%>
<%--                            <td> 留言人： </td>--%>
<%--                            <td>${comment.cauthor}</td>--%>
<%--                            <td> IP： </td>--%>
<%--                            <td>${comment.cip}</td>--%>
<%--                            <td> 留言时间： </td>--%>
<%--                            <td><fmt:formatDate value="${comment.cdate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>--%>
<%--                            <td><a href="../util/news?opr=deleteComment&cid=${comment.cid}&nid=${news.nid}">删除</a></td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td colspan="6">${comment.ccontent}</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td colspan="6"><hr />--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                    </c:forEach>--%>
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>
        </table>
    </div>
</div>
<%--
	request.removeAttribute("news");
	request.removeAttribute("topics");
--%>
<script>
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('ncontent');
</script>
<%@ include file="../../layout/bom.jsp" %>
