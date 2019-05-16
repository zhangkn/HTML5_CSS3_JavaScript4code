<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
callback = Request.QueryString("callback")
Response.AddHeader "Content-Type","text/html;charset=gb2312"
Response.Write("callback('Hi，大家好，我是从服务器端过来的信息使者.')")
%> 
