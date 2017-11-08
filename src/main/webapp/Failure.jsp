<%-- 
    Document   : Faiure
    Created on : Nov 7, 2017, 10:24:25 AM
    Author     : Ranjan
--%>
<% String message = (String)request.getAttribute("alertMsg");%>
<script type="text/javascript">
    var msg = "<%=message%>";
    alert(msg);
	
</script>

<% RequestDispatcher rd=request.getRequestDispatcher("./login.jsp");
			rd.include(request,response);
%>