//var words=new Array("填充物");

//var words=new Array("元素","标签","结构","框架","版式","布局","设计","标准","样式","Web 2.0", "CSS", "XHTML 1.0");

var words=new Array("clear","float","clip","overflow","overflow-x","overflow-y","display","visibility","position","z-index","top","right","bottom","left","height","max-height","min-height","width","max-width","min-width");
 
function AddFillerLink(){
	if(!document.getElementById || !document.createElement) return;
	var i,l;
	for(i=0;i<arguments.length;i++){
		l=document.createElement("a");
		l.href="#";
		l.appendChild(document.createTextNode("增加填充物"));
		l.onclick=function(){AddText(this);return(false)};
		document.getElementById(arguments[i]).appendChild(l);
	}
}

function AddText(el){
	var s="",n,i;
	n=RandomNumber(20,80);
	for(i=0;i<n;i++)
		s+=words[RandomNumber(0,words.length-1)]+" ";
	var t=document.createElement("p");
	t.appendChild(document.createTextNode(s));
	el.parentNode.insertBefore(t,el);
}

function RandomNumber(n1,n2){
	return(Math.floor(Math.random()*(n2-n1))+n1);
}