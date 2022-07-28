// JScript 文件
























function check13dl()
{ 
  if (event.keyCode == 13)
   {
   
    checkdl();
   
   
   }
}




function checkdl()
{
   if(document.getElementById("Top1_1_username").value=="")
   {
     
      alert("用户名必须填写");
      document.getElementById("Top1_1_username").focus();
      return false;
   }
   if(document.getElementById("Top1_1_password").value=="")
   {
     
      alert("密码必须填写");
      document.getElementById("Top1_1_password").focus();
      return false;
   }
   //alert(encodeURIComponent(document.getElementById("Top1_1_username").value));
   send_request("/ashx/H_ajax.ashx?timeid="+Math.random()+"","lyy=yonghudenglu&username="+encodeURIComponent(document.getElementById("Top1_1_username").value)+"&password="+encodeURIComponent(document.getElementById("Top1_1_password").value)+"","recivezhuangtai");
}


function recivezhuangtai()
  { 
   if (http_request.readyState == 4) { // 判断对象状态
    
            if (http_request.status == 200) { // 信息已经成功返回，开始处理信息
           
              chulizhuangtai(http_request.responseText);
            //lert(http_request.responseText);
            } else { //页面不正常
                alert("您所请求的页面有异常。");
            }
        }
        else
        {

        }
     
    }
    
   function chulizhuangtai(str)
    {
     //alert(str);
      if(str=="0")
      {
         
         alert('对不起，您的用户名或者密码错误，请重新输入');
      }
      else
      {
        top.location.href='/huiyuan/index.aspx';

      }

    }  
    
    
    
