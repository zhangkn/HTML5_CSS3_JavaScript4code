<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
callback = Request.QueryString("jsonp")
id = Request.QueryString("id")
Response.AddHeader "Content-Type","text/html;charset=utf-8"
Response.Write(callback & "(")
%>
{
    "title" : "JSONP Test",
    "link" : "http://www.mysite.cn/",
    "modified" : "2016-12-1",
    "items" : 
<%
if id = "1" then
%> 
    {
        "title" : "百度",
        "link" : "http://www.baidu.com/",
        "description" : "百度侧重于中国网民的搜索习惯，搜索结果更加大众化。"
    }
<%
elseif id = "2" then
%>     
    {
        "title" : "谷歌",
        "link" : "http://www.google.cn/",
        "description" : "谷歌搜索结果更客观，尤其在搜索技术性文章的时候，结果更加精准。"
    }
<%
else
Response.Write(" ")
end if
Response.Write("})")
%>          






