<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
dim data
data = Request.QueryString("data")
Response.AddHeader "Content-Type","text/html;charset=gb2312"
Response.Write data 
%>
