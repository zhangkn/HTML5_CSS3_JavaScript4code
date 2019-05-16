<% 
dim a(20)
a(1)="CSS: Cascading Style Sheets，层叠格式表"
a(2)="CGI（Common Gateway Interface，通用网关接口）" 
a(3)="DCD: Document Content Description for XML: XML文件内容描述"
a(4)="DTD: Document Type Definition，文件类型定义" 
a(5)="HTML（HyperText Markup Language，超文本标记语言）" 
a(6)="JVM: Java Virtual Machine, Java虚拟机"
a(7)="SGML: Standard Generalized Markup Language，标准通用标记语言 "
a(8)="XML: Extensible Markup Language（可扩展标记语言）"
a(9)="XSL: Extensible Style Sheet Language（可扩展设计语言）" 
a(10)="DNS（Domain Name System，域名系统）"
a(11)="IMAP4: Internet Message Access Protocol Version 4，第四版因特网信息存取协议 "
a(12)="Internet（因特网）" 
a(13)="IP（Internet Protocol，网际协议）" 
a(14)="MODEM（Modulator Demodulator，调制解调器）" 
a(15)="POP3: Post Office Protocol Version 3，第三版电子邮局协议" 
a(16)="RDF: Resource Description Framework，资源描述框架"
a(17)="SNMP（Simple Network Management Protocol，简单网络管理协议）" 
a(18)="SMTP（Simple Mail Transfer Protocol，简单邮件传输协议）" 
a(19)="VPN: virtual private network，虚拟局域网" 
a(20)="WWW（World Wide Web，万维网，是因特网的一部分"

Response.AddHeader "Content-Type","text/html;charset=gb2312" 
q=request.querystring("q")
if len(q)>0 then
    hint=""
    for i=1 to ubound(a)
        x1=ucase(mid(q,1,len(q)))
        x2=ucase(mid(a(i),1,len(q)))
        if x1=x2 then
            if hint="" then
                hint="<option value="""&a(i)&""">"&a(i)&"</option>"
            else
                hint=hint & "<option value="""&a(i)&""">"&a(i)&"</option>"
            end if
        end if
    next
end if

if hint="" then
    response.write("<select><option>没有匹配对象</option></select>")
else
    response.write("<select onblur='ok(this)'  onchange='ok(this)'>"&hint&"</select>")
end if

%>
