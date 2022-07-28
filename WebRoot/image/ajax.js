
 
 var http_request = false;
 var returnstr=null;

	function send_request(url,data,myprocess) {//初始化、指定处理函数、发送请求的函数
		http_request = false;
		//开始初始化XMLHttpRequest对象
		if(window.XMLHttpRequest) { //Mozilla 浏览器
			http_request = new XMLHttpRequest();
			if (http_request.overrideMimeType) {//设置MiME类别
				http_request.overrideMimeType('text/xml');
			}
		}
		else if (window.ActiveXObject) { // IE浏览器
			try {
				http_request = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					http_request = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {}
			}
		}
		if (!http_request) { // 异常，创建对象实例失败
			window.alert("不能创建XMLHttpRequest对象实例.");
			return false;
			
		}
		http_request.onreadystatechange = eval(myprocess);
		// 确定发送请求的方式和URL以及是否同步执行下段代码
		http_request.open("POST", url, false);
		http_request.send(data);
		//return returnstr;
	}
	// 处理返回信息的函数
//    function processRequest() {
//        if (http_request.readyState == 4) { // 判断对象状态
//         document.getElementById("infoId").style.display="none";
//            if (http_request.status == 200) { // 信息已经成功返回，开始处理信息
//               returnstr=http_request.responseText;
//               returndate(returnstr);
//              // alert(returnstr);
//            } else { //页面不正常
//                alert("您所请求的页面有异常。");
//            }
//        }
//        else
//        {
//        document.getElementById("infoId").style.display="block";
//        }
//        
//    }
    

//我做的都是在url中加上   timeid=new   Date().valueOf()