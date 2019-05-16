<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
callback = Request.QueryString("callback")
Response.Write("callback('Hi，大家好，我是从服务器端过来的信息使者.')")
%> 
