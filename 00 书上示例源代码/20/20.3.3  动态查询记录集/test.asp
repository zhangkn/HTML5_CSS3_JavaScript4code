<?xml version="1.0" encoding="gb2312"?>
<%
'Response.AddHeader "Content-Type","text/html;charset=gb2312"
Response.ContentType = "text/xml"

set conn = Server.CreateObject("adodb.connection")
data = Server.mappath("data.mdb")
conn.Open "driver={microsoft access driver (*.mdb)};"&"dbq="&data
coun=CInt(Request("coun"))
%>
<% 
set rs = Server.CreateObject("adodb.recordset")
sql ="select * from xmlhttp order by id desc"
rs.open sql,conn,1,1
%> 
<data count="<%=coun%>" >
<%
n=0
while (not rs.eof) and (n<coun)
%>
    <item id="<%=rs("id")%>">
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
