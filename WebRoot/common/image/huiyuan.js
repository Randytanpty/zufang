// JScript 文件

function left(mainStr,lngLen) { 
if (lngLen>0) {return mainStr.substring(0,lngLen)} 
else{return null} 
} 
function right(mainStr,lngLen) { 
// alert(mainStr.length) 
if (mainStr.length-lngLen>=0 && mainStr.length>=0 && mainStr.length-lngLen<=mainStr.length) { 
return mainStr.substring(mainStr.length-lngLen,mainStr.length)} 
else{return null} 
} 
function mid(mainStr,starnum,endnum){ 
if (mainStr.length>=0){ 
return mainStr.substr(starnum,endnum) 
}else{return null} 
//mainStr.length 
} 





function checksubmit()
{
   var username=document.getElementById("username");
   if(username.value=='')
   {
       alert('用户名不可以为空');
      username.focus();
       return false;
   }
   
   
    if(username.value.length<6)
   {
       alert('用户名长度必须大于等于6位');
       username.focus();
       return false;
   }
   
   
   var password=document.getElementById("password");
   if(password.value=='')
   {
       alert('密码不可以为空');
       password.focus();
       return false;
   }
    if(password.value.length<6)
   {
       alert('密码长度必须大于等于6位');
       password.focus();
       return false;
   }
   
   
   
    var reppassword=document.getElementById("reppassword");
   if(reppassword.value!=password.value)
   {
       alert('2次输入的密码不一样');
       reppassword.focus();
       return false;
   }
   
   
   
   
   var realname=document.getElementById("realname");
   if(realname.value=='')
   {
       alert('真实姓名不可以为空');
       realname.focus();
       return false;
   }
   
   var tel=document.getElementById("tel");
   if(tel.value=='')
   {
       alert('电话不可以为空');
       tel.focus();
       return false;
   }
   
   var sj=document.getElementById("sj");
   if(sj.value=='')
   {
       alert('手机不可以为空');
       sj.focus();
       return false;
   }
   
   var email=document.getElementById("email");
   if (email.value!=''&&email.value.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) == -1)
   {
     alert("Email格式不正确！");
     email.focus();
     return false;
   }
   var Cktiaokuan=document.getElementById("Cktiaokuan");

   if(Cktiaokuan.checked==false)
   {
      alert("沈阳房产网服务条款必须同意！");
      Cktiaokuan.focus();
      return false;
   }
   
   
   
   return true;
 }

 
 
 
 function checkupdatepassword()
{
 
   var olepassword=document.getElementById("olepassword");
   if(olepassword.value=='')
   {
       alert('原始密码不可以为空');
       olepassword.focus();
       return false;
   }
   
     var password=document.getElementById("password");
   if(password.value=='')
   {
       alert('新密码不可以为空');
       password.focus();
       return false;
   }
   
   
   
    var repassword=document.getElementById("repassword");
   if(repassword.value!=password.value)
   {
       alert('2次输入的密码不一样');
       repassword.focus();
       return false;
   }
   
   return true;


   }
   
   
   
   
   
   
   
 function checkupdatehuiyuanpassword()
{
 
   
   
     var password=document.getElementById("password");
   if(password.value=='')
   {
       alert('新密码不可以为空');
       password.focus();
       return false;
   }
   
   
   
    var repassword=document.getElementById("repassword");
   if(repassword.value!=password.value)
   {
       alert('2次输入的密码不一样');
       repassword.focus();
       return false;
   }
   
   return true;


   }
   
   
   
   
   
   
   
 function zhuanyi()
{
 
   
   
   
    var txtjifen=document.getElementById("txtjifen");
   if(txtjifen.value=='')
   {
       alert('转移的积分必须填写');
       txtjifen.focus();
       return false;
   }
   
   return true;


   } 
   
   
   
   
   
   
   
   
   
   
   
   
function checklxfs()
{
 
   
   var realname=document.getElementById("realname");
   if(realname.value=='')
   {
       alert('真实姓名不可以为空');
       realname.focus();
       return false;
   }
   
   var tel=document.getElementById("tel");
   if(tel.value=='')
   {
       alert('电话不可以为空');
       tel.focus();
       return false;
   }
   
   var sj=document.getElementById("sj");
   if(sj.value=='')
   {
       alert('手机不可以为空');
       sj.focus();
       return false;
   } 
   
    var email=document.getElementById("email");
   if (email.value!=''&&email.value.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) == -1)
   {
     alert("Email格式不正确！");
     email.focus();
     return false;
   }
   
   
   return true;
 }
 
 
 
 function checkfabubuy()
{
 
   
   var strArea=document.getElementById("strArea");
   if(strArea.value=='')
   {
       alert('所在区域不可以为空');
       strArea.focus();
       return false;
   }
   
   var strAddress=document.getElementById("strAddress");
   if(strAddress.value=='')
   {
       alert('详细地址不可以为空');
       strAddress.focus();
       return false;
   }
   
   var intAreaAll=document.getElementById("intAreaAll");
   if(intAreaAll.value=='')
   {
       alert('面积不可以为空');
       intAreaAll.focus();
       return false;
   } 
   
//    var intAreaAll=document.getElementById("intAreaAll");

//   if(intAreaAll.value.split(".").length>2||left(intAreaAll.value,1)=="."||right(intAreaAll.value,1)==".")
//   {
//   
//       alert('面积格式不正确');
//       intAreaAll.focus();
//       return false;
//   }  
//   
   
   
   
   
   
   
   
   
   
   
   
   var intPrice=document.getElementById("intPrice");
   if(intPrice.value=='')
   {
       alert('价格不可以为空');
       intPrice.focus();
       return false;
   } 
//  var intPrice=document.getElementById("intPrice");

//   if(intPrice.value.split(".").length>2||left(intPrice.value,1)=="."||right(intPrice.value,1)==".")
//   {
//   
//       alert('价格格式不正确');
//       intPrice.focus();
//       return false;
//   }    
   
   
   
   
  var strContactperson=document.getElementById("strContactperson");
   if(strContactperson.value=='')
   {
       alert('联系人不可以为空');
       strContactperson.focus();
       return false;
   } 
   
   
   var strTelephone=document.getElementById("strTelephone");
   if(strTelephone.value=='')
   {
       alert('电话不可以为空');
       strTelephone.focus();
       return false;
   } 
   
   
   
   
   
   
   
   return true;
 }
 
 
 
 
function jiance()
{
  var username=document.getElementById("username");
   if(username.value=='')
   {
       alert('用户名不可以为空');
      username.focus();
       return false;
   }
   
   
    if(username.value.length<6)
   {
       alert('用户名长度必须大于等于6位');
       username.focus();
       return false;
   }
   
     send_request("/ashx/H_ajax.ashx?timeid="+Math.random()+"","lyy=jianceusername&username="+encodeURIComponent(username.value)+"","reciveusername");
   
   
   
}
 
 

function reciveusername()
  { 
   if (http_request.readyState == 4) { // 判断对象状态
    
            if (http_request.status == 200) { // 信息已经成功返回，开始处理信息
           
              chuliusername(http_request.responseText);
            //lert(http_request.responseText);
            } else { //页面不正常
                alert("您所请求的页面有异常。");
            }
        }
        else
        {

        }
     
    }
    
   function chuliusername(str)
    {
     
      if(str=="0")
      {
         
         alert('恭喜你，这个用户名可以使用');
      }
      else
      {
        alert('对不起，这个用户名已经被注册了');

      }

    }  
 
 



  function checkfabusales()
  {
   var strProjname=document.getElementById("strProjname");
   if(strProjname.value=='')
   {
       alert('小区名称不可以为空');
       strProjname.focus();
       return false;
   }
   
   var strAddress=document.getElementById("strAddress");
   if(strAddress.value=='')
   {
       alert('详细地址不可以为空');
       strAddress.focus();
       return false;
   }
   
   
   
    var intFloorCur=document.getElementById("intFloorCur");
   if(intFloorCur.value=='')
   {
       alert('所在楼层不可以为空');
       intFloorCur.focus();
       return false;
   } 
   
   
   
    var intFloorAll=document.getElementById("intFloorAll");
   if(intFloorAll.value=='')
   {
       alert('总层数不可以为空');
       intFloorAll.focus();
       return false;
   } 
   
   
     
   var intAreaAll=document.getElementById("intAreaAll");
   if(intAreaAll.value=='')
   {
       alert('建筑面积不可以为空');
       intAreaAll.focus();
       return false;
   } 
   
    var intAreaAll=document.getElementById("intAreaAll");

   if(intAreaAll.value.split(".").length>2||left(intAreaAll.value,1)=="."||right(intAreaAll.value,1)==".")
   {
   
       alert('建筑面积格式不正确');
       intAreaAll.focus();
       return false;
   }  
   
   
   
  
   
   var intAreaUse=document.getElementById("intAreaUse");
   if(intAreaUse.value=='')
   {
       alert('使用面积不可以为空');
       intAreaUse.focus();
       return false;
   } 
   
    var intAreaUse=document.getElementById("intAreaUse");

   if(intAreaUse.value.split(".").length>2||left(intAreaUse.value,1)=="."||right(intAreaUse.value,1)==".")
   {
   
       alert('使用面积格式不正确');
       intAreaUse.focus();
       return false;
   }  
   
   
   
   
   
   
   
   
   
   
   
   var intPrice=document.getElementById("intPrice");
   if(intPrice.value=='')
   {
       alert('出售价格不可以为空');
       intPrice.focus();
       return false;
   }
 
   var intPrice=document.getElementById("intPrice");

   if(intPrice.value.split(".").length>2||left(intPrice.value,1)=="."||right(intPrice.value,1)==".")
   {
   
       alert('出售价格格式不正确');
       intPrice.focus();
       return false;
   }           
   
   
   
   
   
   
  var strContactperson=document.getElementById("strContactperson");
   if(strContactperson.value=='')
   {
       alert('联系人不可以为空');
       strContactperson.focus();
       return false;
   } 
   
   
   var strTelephone=document.getElementById("strTelephone");
   if(strTelephone.value=='')
   {
       alert('电话不可以为空');
       strTelephone.focus();
       return false;
   } 
   
   
   
   
   
   
   
   return true;
 }
 
 
 
 
 
 
 
 
 
 
 function checkfabuzhuzhai()
  {
   var strProjname=document.getElementById("strProjname");
   if(strProjname.value=='')
   {
       alert('小区名称不可以为空');
       strProjname.focus();
       return false;
   }
   
   var strAddress=document.getElementById("strAddress");
   if(strAddress.value=='')
   {
       alert('详细地址不可以为空');
       strAddress.focus();
       return false;
   }
   
   
   
    var intFloorCur=document.getElementById("intFloorCur");
   if(intFloorCur.value=='')
   {
       alert('所在楼层不可以为空');
       intFloorCur.focus();
       return false;
   } 
   
   
   
    var intFloorAll=document.getElementById("intFloorAll");
   if(intFloorAll.value=='')
   {
       alert('总层数不可以为空');
       intFloorAll.focus();
       return false;
   } 
   
   
     
   var intAreaAll=document.getElementById("intAreaAll");
   if(intAreaAll.value=='')
   {
       alert('建筑面积不可以为空');
       intAreaAll.focus();
       return false;
   } 
   
    var intAreaAll=document.getElementById("intAreaAll");

   if(intAreaAll.value.split(".").length>2||left(intAreaAll.value,1)=="."||right(intAreaAll.value,1)==".")
   {
   
       alert('建筑面积格式不正确');
       intAreaAll.focus();
       return false;
   }  
   
   
   
  
   
   var intAreaUse=document.getElementById("intAreaUse");
   if(intAreaUse.value=='')
   {
       alert('使用面积不可以为空');
       intAreaUse.focus();
       return false;
   } 
   
    var intAreaUse=document.getElementById("intAreaUse");

   if(intAreaUse.value.split(".").length>2||left(intAreaUse.value,1)=="."||right(intAreaUse.value,1)==".")
   {
   
       alert('使用面积格式不正确');
       intAreaUse.focus();
       return false;
   }  
   
   
   
   
   
   
   
   
   
   
   
   var yuezujin=document.getElementById("yuezujin");
   if(yuezujin.value=='')
   {
       alert('月租金不可以为空');
       yuezujin.focus();
       return false;
   }
 
   var yuezujin=document.getElementById("yuezujin");

   if(yuezujin.value.split(".").length>2||left(yuezujin.value,1)=="."||right(yuezujin.value,1)==".")
   {
   
       alert('月租金格式不正确');
       yuezujin.focus();
       return false;
   }           
   
   
   
   
   
   
  var strContactperson=document.getElementById("strContactperson");
   if(strContactperson.value=='')
   {
       alert('联系人不可以为空');
       strContactperson.focus();
       return false;
   } 
   
   
   var strTelephone=document.getElementById("strTelephone");
   if(strTelephone.value=='')
   {
       alert('电话不可以为空');
       strTelephone.focus();
       return false;
   } 
   
   
   
   
   
   
   
   return true;
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 function checkfabuhezu()
{
 
   
   var strProjname=document.getElementById("strProjname");
   if(strProjname.value=='')
   {
       alert('小区名称不可以为空');
       strProjname.focus();
       return false;
   }
   
   var strAddress=document.getElementById("strAddress");
   if(strAddress.value=='')
   {
       alert('详细地址不可以为空');
       strAddress.focus();
       return false;
   }
   
   

   
     
   var intAreaAll=document.getElementById("intAreaAll");
   if(intAreaAll.value=='')
   {
       alert('建筑面积不可以为空');
       intAreaAll.focus();
       return false;
   } 
   
    var intAreaAll=document.getElementById("intAreaAll");

   if(intAreaAll.value.split(".").length>2||left(intAreaAll.value,1)=="."||right(intAreaAll.value,1)==".")
   {
   
       alert('建筑面积格式不正确');
       intAreaAll.focus();
       return false;
   }  
   
   
   
   var intAreaUse=document.getElementById("intAreaUse");
   if(intAreaUse.value=='')
   {
       alert('使用面积不可以为空');
       intAreaUse.focus();
       return false;
   } 
   
   
      var intAreaUse=document.getElementById("intAreaUse");

   if(intAreaUse.value.split(".").length>2||left(intAreaUse.value,1)=="."||right(intAreaUse.value,1)==".")
   {
   
       alert('使用面积格式不正确');
       intAreaUse.focus();
       return false;
   }  
   
   
   
   
   
   
  
   var yuezujin=document.getElementById("yuezujin");
   if(yuezujin.value=='')
   {
       alert('月租金不可以为空');
       yuezujin.focus();
       return false;
   }
 
   var yuezujin=document.getElementById("yuezujin");

   if(yuezujin.value.split(".").length>2||left(yuezujin.value,1)=="."||right(yuezujin.value,1)==".")
   {
   
       alert('月租金格式不正确');
       yuezujin.focus();
       return false;
   }     
   
   
   
   
   
   
   
   
   
   
   
    
   
  var strContactperson=document.getElementById("strContactperson");
   if(strContactperson.value=='')
   {
       alert('联系人不可以为空');
       strContactperson.focus();
       return false;
   } 
   
   
   var strTelephone=document.getElementById("strTelephone");
   if(strTelephone.value=='')
   {
       alert('电话不可以为空');
       strTelephone.focus();
       return false;
   } 
   
   
   
   
   
   
   
   return true;
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 function checkfabushangpu()
{

   

   
   var strAddress=document.getElementById("strAddress");
   if(strAddress.value=='')
   {
       alert('详细地址不可以为空');
       strAddress.focus();
       return false;
   }
   
  

                        //获取所有的Input元素 
                        var  allInputObject=document.body.getElementsByTagName("input"); 
                        var  checkBoxIndex=0; 
                        for(var i=0;i<allInputObject.length;i++) 
                        { 
                                //获取input元素中的checkbox 
                                if(allInputObject[i].type=='checkbox'&&allInputObject[i].checked) 
                                { 
                                      
                                      checkBoxIndex++; 
                                } 
                        } 
   

  
   if (checkBoxIndex==0)
   {
      alert('供求必须选择');
       
       return false;
   
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
 var miaoshu=document.getElementById("miaoshu");
   if(miaoshu.value=='')
   {
       alert('简要描述不可以为空');
       miaoshu.focus();
       return false;
   } 
   
   
   
 
  
   
  var strContactperson=document.getElementById("strContactperson");
   if(strContactperson.value=='')
   {
       alert('联系人不可以为空');
       strContactperson.focus();
       return false;
   } 
   
   
   var strTelephone=document.getElementById("strTelephone");
   if(strTelephone.value=='')
   {
       alert('电话不可以为空');
       strTelephone.focus();
       return false;
   } 
   
  
   
   
   
   return true;
 }
 
 
 
 
 
 
 
 
 