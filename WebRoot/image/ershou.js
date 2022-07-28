// JScript 文件

var quyuid = getParameter("quyuid");

if(quyuid!=''&&(fucCheckNUM(quyuid)=="1"))
{
  document.getElementById("divquyu"+quyuid).style.backgroundColor="FF6500";

}



var roomid = getParameter("roomid");
if(roomid!=''&&(fucCheckNUM(roomid)=="1"))
{

  document.getElementById("divhuxing"+roomid).style.backgroundColor="FF6500";

}




var mianjimin = getParameter("mianjimin");
var mianjimax = getParameter("mianjimax");
var mianjiid = getParameter("mianjiid");
if(mianjiid!=''&&(fucCheckNUM(mianjiid)=="1")&&mianjimin!=''&&(fucCheckNUM(mianjimin)=="1")&&mianjimax!=''&&(fucCheckNUM(mianjimax)=="1"))
{

  document.getElementById("divmianji"+mianjiid).style.backgroundColor="FF6500";

}








var shoujiamin = getParameter("shoujiamin");
var shoujiamax = getParameter("shoujiamax");
var shoujiaid = getParameter("shoujiaid");

if(shoujiaid!=''&&(fucCheckNUM(shoujiaid)=="1")&&shoujiamin!=''&&(fucCheckNUM(shoujiamin)=="1")&&shoujiamax!=''&&(fucCheckNUM(shoujiamax)=="1"))
{

  document.getElementById("divshoujia"+shoujiaid).style.backgroundColor="FF6500";

}





var laiyuanid = getParameter("laiyuanid");
if(laiyuanid!=''&&(fucCheckNUM(laiyuanid)=="1"))
{

  document.getElementById("divlaiyuan"+laiyuanid).style.backgroundColor="FF6500";

}


