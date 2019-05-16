<?xml version="1.0" encoding="gb2312"?>
<%
Response.CacheControl="no-cache"
Response.AddHeader "pragma","no-cache"
'Response.AddHeader "Content-Type","text/html;charset=gb2312"
Response.Expires = -1
Response.ExpiresAbsolute = now - 1
Response.ContentType = "text/xml"

set conn = Server.CreateObject("adodb.connection")
data = Server.mappath("data.mdb")
conn.Open "driver={microsoft access driver (*.mdb)};"&"dbq="&data
coun=CInt(Request("coun")) 
if  coun = 1 then 
	str = "属性"
else
	str = "方法"
end if
%>
<% 
set rs = Server.CreateObject("adodb.recordset")
sql ="select * from xmlhttp where class = '"&str&"' order by id desc"
rs.open sql,conn,1,1
%>
<data count="<%=coun%>" >
<%
n=0
while (not rs.eof)
%>
    <item>
         <who><%=trim(rs("who")) %></who>
		 <class><%=trim(rs("class")) %></class>
		 <what><%=trim(rs("what")) %></what>
    </item>
<%
	n = n + 1
	rs.movenext
wend
%>
</data>
