function openurl(url,width,height){ 

//var   width   =   screen.availWidth;   
//var   height   =   screen.availHeight; 
window.open(url,'win',"height="+height+",top=0,left=0,width="+width+",status=no,toolbar=no,menubar=no,location=no,scrollbars=yes,resizable=yes");
}

function showMyModalDialog(url,width,height)
{
//alert('d');
  showModalDialog(url,window, "dialogWidth:"+width+"px;dialogHeight:"+height+"px;center:yes;status:no;scroll:no;help:no");
}

function getParameter(param)
{
var query = window.location.search;
var iLen = param.length;
var iStart = query.indexOf(param);
if (iStart == -1)
   return "";
iStart += iLen + 1;
var iEnd = query.indexOf("&", iStart);
if (iEnd == -1)
   return query.substring(iStart); 
return query.substring(iStart, iEnd);
}

function limitChars(id, count)
{
    var obj = document.getElementById(id);
    
    if (obj.value.length > count)
    {
        obj.value = obj.value.substr(0, count);
    }
}

function fucCheckNUM(NUM) 
{ 
var i,j,strTemp; 
strTemp="0123456789"; 
if (NUM.length== 0) 
return -1 
for (i=0;i<NUM.length;i++) 
{ 
j=strTemp.indexOf(NUM.charAt(i)); 
if (j==-1) 
{ 
//说明有字符不是数字 
return 0; 
} 
} 
//说明是数字 
return 1; 
} 