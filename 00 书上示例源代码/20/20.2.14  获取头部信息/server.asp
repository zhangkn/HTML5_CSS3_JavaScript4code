<?xml version="1.0" encoding="gb2312"?>
<% 
Response.ContentType = "text/xml"    
callback = Request.QueryString("callback")
Response.Write("<the>" & callback & "</the>")
%>



