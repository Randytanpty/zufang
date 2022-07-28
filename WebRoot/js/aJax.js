var xmlHttp;

/**
 * 创建xmlHttp对象
 */
function GetXmlHttpObject() {
	var xmlHttp = null;
	try {
		// Firefox, Opera 8.0+, Safari
		xmlHttp = new XMLHttpRequest();
	} catch (e) {
		// Internet Explorer
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	return xmlHttp;
}
/** ****************************处理加关注开始************************************* */
/**
 * 加关注
 * 
 * @return
 */
function addAttention() {
	xmlHttp = GetXmlHttpObject();
	var url = "payAttention";
	var hiID = document.getElementById("hiID").value;
	url += "?hiID=" + hiID;
	xmlHttp.onreadystatechange = stateChanged;
	xmlHttp.open("post", url, true);
	xmlHttp.send(null);
}

/**
 * 状态改变执行的函数
 */
function stateChanged() {
	if (xmlHttp.readyState == 4) {
		//alert(xmlHttp.responseText);
		if(xmlHttp.responseText=="unLogin"){
			alert("您尚未登录");
			if(confirm("是否登录?")){
				alert("生成的URL编码如下："+encodeURIComponent(document.URL));
				window.navigate("./login.jsp?url="+encodeURIComponent(document.URL));
			}
		}else {
			alert(xmlHttp.responseText);
		}
	}
}
/** ****************************处理加关注结束************************************* */

/** ******************************处理登陆开始************************************* */

function login() {
	xmlHttp = GetXmlHttpObject();
	var url = "login";
	var usrAccount = document.getElementById("usrAccount").value;
	var usrPassword = document.getElementById("usrPassword").value;
	var yanzhengma = document.getElementById("yanzhengma").value;
	if(usrPassword==""){
		alert("用户名不能为空！");
		return;
	}
	if(usrAccount==""){
		alert("密码不能为空！");
		return;
	}
	if(yanzhengma==""){
		alert("验证码不能为空！");
		return;
	}
	url += "?usrAccount=" + usrAccount + "&usrPassword=" + usrPassword+"&yanzhengma="+yanzhengma;
	xmlHttp.onreadystatechange = chuli;
	xmlHttp.open("post", url, true);
	xmlHttp.send(null);
}

function chuli() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.responseText == "error") {
			alert("登录失败:错误的用户名或者密码");
		}else if(xmlHttp.responseText == "errorCode"){
			alert("错误的验证码");
		}else {
			result = xmlHttp.responseText;
			var num = result.indexOf(".");
			var usrID = result.substring(0, num);
			var usrName = result.substring(num + 1, result.length);
			// document.getElementById("fade").style.display="block";
			// document.getElementById("whitecontent").style.display="block";
			document.getElementById("login").style.display = "none";
			document.getElementById("aJaxDiv").style.display = "block";
			document.getElementById("usrNameSpan").innerHTML = "<font color='red'>"
					+ usrName + "</font>";
			// document.getElementById("whitecontent").innerHTML="欢迎您:<font
			// color='red'>"+usrName+"<a href='#'
			// onclick='reload()'>点此处刷新页面</a>";
			// document.getElementById("usr").innerHTML="";
			// alert(xmlHttp.responseText);
			// window.navigate("./getMyPub");
		}
	}
}

/** ******************************处理登陆结束************************************* */

/** ******************************处理修改信息开始************************************* */

function showUpdateDiv() {
	document.getElementById("pwd").style.display = "block";
	document.getElementById("fade").style.display = "block";
}

function updateInfo() {

	xmlHttp = GetXmlHttpObject();

	var oldUsrPassword = document.getElementById("oldUsrPassword").value;
	var newUsrPassword = document.getElementById("newUsrPassword").value;
	var reNewUsrPassword = document.getElementById("reNewUsrPassword").value;
	if(oldUsrPassword==""||newUsrPassword==""||reNewUsrPassword==""){
		alert("旧密码以及新密码不能为空");
		return;
	}
	if(newUsrPassword.length<6){
		alert("新密码不能少于6位");
		return;
	}
	if(reNewUsrPassword.length<6){
		alert("确认密码不能少于6位");
		return;
	}if(newUsrPassword!=reNewUsrPassword){
		alert("确认密码不一致");
		return;
	}
	var url = "editInfo";
	url += "?oldUsrPassword=" + oldUsrPassword + "&newUsrPassword="
			+ newUsrPassword;
	// alert(url);
	xmlHttp.onreadystatechange = doUpdate;
	xmlHttp.open("post", url, true);
	xmlHttp.send(null);
}
function doUpdate() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.responseText == "success") {
			alert("修改成功，请确定后重新登录");
			window.navigate("./exit");
		} else {
			alert("修改失败");
			document.getElementById("pwd").style.display = "none";
			document.getElementById("fade").style.display = "none";
		}
	}

}

/** ******************************处理修改信息结束************************************* */

/** ******************************检查用户名开始************************************* */
function checkUsrName(){
	xmlHttp=GetXmlHttpObject();
	var usrAccount=document.getElementById("usrAccount").value;
	if(usrAccount==""){
		alert("账户名称不能为空！");
		return;
	}
	var url="checkUsrName";
	url+="?usrAccount="+usrAccount;
	xmlHttp.onreadystatechange=docheck;
	xmlHttp.open("post",url,true);
	xmlHttp.send(null);
	
}

function docheck(){
	if(xmlHttp.readyState==4){
	if(xmlHttp.responseText=="exist"){
		document.getElementById("msg").innerHTML="<font color='red'>该账户名称</font><font color='blue'>"+document.getElementById("usrAccount").value+"</font><font color='red'>已经存在，请重新填写</font>";
		//alert("该账户名称已经存在！");
		document.getElementById("usrAccount").value="";
	}else{
		//alert("该账户名称可以使用！");
		document.getElementById("msg").innerHTML="<font color='red'>恭喜，该账户名称可以使用</font>";
	}
	}
}
/** ******************************检查用户名结束************************************* */