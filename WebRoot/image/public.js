// JScript 文件


//黄页搜索

function searchgo13huangye()
{ 
  if (event.keyCode == 13)
   {
   
    searchgohuangye();
   
   
   }
}


function searchgohuangye()
{
   location.href="index.aspx?Dropsearch="+document.getElementById("Dropsearch").value+"&search="+encodeURIComponent(document.getElementById("search").value)+"";
}

//黄页搜索














//新楼盘搜索
function searchgo13newhouse(quyuid,roomid,leibieid,junjiaid,minjunjia,maxjunjia)
{ 
  if (event.keyCode == 13)
   {
   
    searchgonewhouse(quyuid,roomid,leibieid,junjiaid,minjunjia,maxjunjia);
   
   
   }
}


function searchgonewhouse(quyuid,roomid,leibieid,junjiaid,minjunjia,maxjunjia)
{

   location.href="/newhouse/house.aspx?quyuid="+quyuid+"&roomid="+roomid+"&leibieid="+leibieid+"&junjiaid="+junjiaid+"&minjunjia="+minjunjia+"&maxjunjia="+maxjunjia+"&s_str=" +encodeURIComponent(document.getElementById("search_newhouse").value.replace("楼盘名称或详细地址", "")) + "";

}

//新楼盘搜索结束







//二手房搜索

function searchgo13ershou(quyuid,roomid,mianjiid,mianjimin,mianjimax,shoujiaid,shoujiamin,shoujiamax,laiyuanid)
{ 
  if (event.keyCode == 13)
   {
   
    searchgoershou(quyuid,roomid,mianjiid,mianjimin,mianjimax,shoujiaid,shoujiamin,shoujiamax,laiyuanid);
   
   
   }
}


function searchgoershou(quyuid,roomid,mianjiid,mianjimin,mianjimax,shoujiaid,shoujiamin,shoujiamax,laiyuanid)
{


   location.href="/ershou/sales.aspx?quyuid=" +quyuid + "&roomid=" + roomid + "&mianjiid=" + mianjiid+ "&mianjimin=" + mianjimin + "&mianjimax=" + mianjimax + "&shoujiaid=" + shoujiaid + "&shoujiamin=" + shoujiamin + "&shoujiamax=" + shoujiamax + "&laiyuanid=" + laiyuanid + "&s_str=" + encodeURIComponent(document.getElementById("search").value.replace("小区名称或详细地址", "")) + "";


}


//二手房搜索结束









//写字楼搜索

function searchgo13office()
{ 
  if (event.keyCode == 13)
   {
   
    searchgooffice();
   
   
   }
}


function searchgooffice()
{

     location.href="/office/office_more.aspx?s_quyu=" + document.getElementById("Dropoffice").value + "&s_str=" + encodeURIComponent(document.getElementById("search_office").value.replace("楼宇名称", "")) + "";


}


//写字楼搜索结束








//商铺门市搜索

function searchgo13shangpu(quyuid,gongqiuid,leixingid,laiyuanid)
{ 
  if (event.keyCode == 13)
   {
   
    searchgoshangpu(quyuid,gongqiuid,leixingid,laiyuanid);
   
   
   }
}


function searchgoshangpu(quyuid,gongqiuid,leixingid,laiyuanid)
{

       
 location.href="/shangpu/shangpu.aspx?quyuid="+quyuid+"&gongqiuid="+gongqiuid+"&leixingid="+leixingid+"&laiyuanid="+laiyuanid+"&s_str=" +encodeURIComponent(document.getElementById("search_shangpu").value) + "";



}


//商铺门市搜索结束












//厂房仓库搜索

function searchgo13changfang(quyuid,gongqiuid,leixingid,laiyuanid)
{ 
  if (event.keyCode == 13)
   {
   
    searchgochangfang(quyuid,gongqiuid,leixingid,laiyuanid);
   
   
   }
}


function searchgochangfang(quyuid,gongqiuid,leixingid,laiyuanid)
{

       
 location.href="/changfang/changfang.aspx?quyuid="+quyuid+"&gongqiuid="+gongqiuid+"&leixingid="+leixingid+"&laiyuanid="+laiyuanid+"&s_str=" +encodeURIComponent(document.getElementById("search_changfang").value) + "";



}


//厂房仓库搜索结束






//公寓搜索

function searchgo13gongyu()
{ 
  if (event.keyCode == 13)
   {
   
    searchgogongyu();
   
   
   }
}


function searchgogongyu()
{

       
 location.href="/gongyu/index.aspx?s_quyu=" + document.getElementById("Dropquyu_gongyu").value + "&s_str=" +encodeURIComponent(document.getElementById("search_gongyu").value) + "";



}
//公寓搜索结束





//公寓搜索2

function searchgo13gongyu2(quyuid,roomid,mianjiid,mianjimin,mianjimax,yuezuid,yuezumin,yuezumax)
{ 
  if (event.keyCode == 13)
   {
   
    searchgogongyu2(quyuid,roomid,mianjiid,mianjimin,mianjimax,yuezuid,yuezumin,yuezumax);
   
   
   }
}


function searchgogongyu2(quyuid,roomid,mianjiid,mianjimin,mianjimax,yuezuid,yuezumin,yuezumax)
{

       
 location.href="/gongyu/index.aspx?quyuid="+quyuid+"&roomid="+roomid+"&mianjiid="+mianjiid+"&mianjimin="+mianjimin+"&mianjimax="+mianjimax+"&yuezuid="+yuezuid+"&yuezumin="+yuezumin+"&yuezumax="+yuezumax+"&s_str=" +encodeURIComponent(document.getElementById("search").value.replace("小区名称或详细地址", "")) + "";
 

}
//公寓搜索结束2













//房屋求租搜索

function searchgo13qiuzu()
{ 
  if (event.keyCode == 13)
   {
   
    searchgoqiuzu();
   
   
   }
}


function searchgoqiuzu()
{

       
 location.href="/zufang/qiuzu.aspx?s_str=" +encodeURIComponent(document.getElementById("search_qiuzu").value) + "";



}


//房屋求租搜索结束











//普通住宅搜索

function searchgo13zhuzhai()
{ 
  if (event.keyCode == 13)
   {
   
    searchgozhuzhai();
   
   
   }
}


function searchgozhuzhai()
{

       
 location.href="/zufang/index.aspx?s_quyu=" + document.getElementById("Dropquyu_zhuzhai").value + "&s_str=" +encodeURIComponent(document.getElementById("search_zhuzhai").value) + "";



}


//普通住宅搜索结束


//普通住宅搜索2

function searchgo13zhuzhai2(quyuid,roomid,mianjiid,mianjimin,mianjimax,shoujiaid,shoujiamin,shoujiamax,laiyuanid)
{ 
  if (event.keyCode == 13)
   {
   
    searchgozhuzhai2(quyuid,roomid,mianjiid,mianjimin,mianjimax,shoujiaid,shoujiamin,shoujiamax,laiyuanid);
   
   
   }
}


function searchgozhuzhai2(quyuid,roomid,mianjiid,mianjimin,mianjimax,shoujiaid,shoujiamin,shoujiamax,laiyuanid)
{

       
 location.href="/zufang/index.aspx?quyuid="+quyuid+"&roomid="+roomid+"&mianjiid="+mianjiid+"&mianjimin="+mianjimin+"&mianjimax="+mianjimax+"&shoujiaid="+shoujiaid+"&shoujiamin="+shoujiamin+"&shoujiamax="+shoujiamax+"&laiyuanid="+laiyuanid+"&s_str=" +encodeURIComponent(document.getElementById("search").value.replace("小区名称或详细地址", "")) + "";


}


//普通住宅搜索结束2










//合租信息搜索

function searchgo13hezu()
{ 
  if (event.keyCode == 13)
   {
   
    searchgohezu();
   
   
   }
}


function searchgohezu()
{

       
 location.href="/hezu/index.aspx?s_quyu=" + document.getElementById("Dropquyu_hezu").value + "&s_str=" +encodeURIComponent(document.getElementById("search_hezu").value) + "";



}
//合租信息搜索结束


//合租信息搜索2

function searchgo13hezu2(quyuid,yuezuid,yuezuminid,yuezumaxid,xingzhiid,laiyuanid,sousuo)
{ 
  if (event.keyCode == 13)
   {
   
    searchgohezu2(quyuid,yuezuid,yuezuminid,yuezumaxid,xingzhiid,laiyuanid,sousuo);
   
   
   }
}


function searchgohezu2(quyuid,yuezuid,yuezuminid,yuezumaxid,xingzhiid,laiyuanid,sousuo)
{

 location.href="?quyuid="+quyuid+"&yuezuid="+yuezuid+"&yuezuminid="+yuezuminid+"&yuezumaxid="+yuezumaxid+"&xingzhiid="+xingzhiid+"&laiyuanid="+laiyuanid+"&s_str=" +escape(document.getElementById("search").value.replace('小区名称或详细地址','')) + "&sousuo=1";


}
//合租信息搜索结束2











//新闻中心搜索

function searchgo13news()
{ 
  if (event.keyCode == 13)
   {
   
    searchgonews();
   
   
   }
}


function searchgonews()
{
  
  location.href="/news/morenews.aspx?search=" +encodeURIComponent(document.getElementById("search").value) + "";

}
//新闻中心搜索结束






//房屋求购搜索

function searchgo13qiugou()
{ 
  if (event.keyCode == 13)
   {
   
    searchgoqiugou();
   
   
   }
}


function searchgoqiugou()
{

       
 location.href="buy.aspx?s_str=" +encodeURIComponent(document.getElementById("search").value.replace("项目名称或项目地址", "")) + "";


}


//房屋求购搜索结束





function dianji(data,id)
{
  //alert(id);
  send_request("/ashx/H_ajax.ashx?timeid="+Math.random()+"","lyy=dianjiliang&data="+data+"&id="+id+"","dianjiliang2");



}

function dianjiliang2()
  { 
   if (http_request.readyState == 4) { // 判断对象状态
         //document.getElementById("infoId").style.display="none";
            if (http_request.status == 200) { // 信息已经成功返回，开始处理信息
              // returnstr=http_request.responseText;
             // returnloupansousuo(http_request.responseText);
            // alert(http_request.responseText);
			document.getElementById('click').innerHTML=http_request.responseText;
			
            } else { //页面不正常
                alert("您所请求的页面有异常。");
            }
        }
        else
        {
        //document.getElementById("infoId").style.display="block";
        }
     
    }







function DoCheckwei(flag)// 全选 flag=1 反选 flag=0
    {
       var grid = document.getElementById(DLid);
       var inputs = grid.getElementsByTagName("input");
        for (var i=0; i < inputs.length; i++)
        if (inputs[i].type == 'checkbox')
        {
            if (flag==1)
                inputs[i].checked = true;
            else if(flag==2)
                inputs[i].checked =false;
            else
             inputs[i].checked =!inputs[i].checked;  
            
        }
    } 
    
    function checkduoyuan(flag)//
    {
       var grid = document.getElementById(DLid);
       var inputs = grid.getElementsByTagName("input");
       var i=0;
        for (var i=0; i < inputs.length; i++)
        if (inputs[i].type == 'checkbox')
        {
                if(inputs[i].checked ==true)
                {
                  i=1;
                  if(i>0)
                  {
                     if(confirm(flag))
                      { 
                        return true; 
                      }
                      else
                      {
                       return false; 
                      }
                      

                  
                  }
//                  return true;
                  
                }
            
        }
        alert('请选择要操作的记录');
        return false;
    } 
    