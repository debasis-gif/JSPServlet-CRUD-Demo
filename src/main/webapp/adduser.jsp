<!--  Add User Result Form -->

<%@ page import="com.pcsglobal.dao.UserDao" %>
<%@ page import="com.pcsglobal.bean.User"%>

<jsp:useBean id="u" class="com.pcsglobal.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
	int i = UserDao.save(u);
	if (i > 0) 
	{
		response.sendRedirect("adduser-success.jsp");
	} 
	else 
	{
		response.sendRedirect("adduser-error.jsp");
	}
%>
