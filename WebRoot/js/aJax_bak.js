var xmlHttp;

/**
 * ����xmlHttp����
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
/** ****************************����ӹ�ע��ʼ************************************* */
/**
 * �ӹ�ע
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
 * ״̬�ı�ִ�еĺ���
 */
function stateChanged() {
	if (xmlHttp.readyState == 4) {
		//alert(xmlHttp.responseText);
		if(xmlHttp.responseText=="unLogin"){
			alert("����δ��¼");
			if(confirm("�Ƿ��¼?")){
				alert(document.URL);
				window.navigate("./login.jsp?url="+encodeURI(document.URL));
			}
		}else {
			alert(xmlHttp.responseText);
		}
	}
}
/** ****************************����ӹ�ע����************************************* */

/** ******************************�����½��ʼ************************************* */

function login() {
	xmlHttp = GetXmlHttpObject();
	var url = "login";
	var usrAccount = document.getElementById("usrAccount").value;
	var usrPassword = document.getElementById("usrPassword").value;
	url += "?usrAccount=" + usrAccount + "&usrPassword=" + usrPassword;
	xmlHttp.onreadystatechange = chuli;
	xmlHttp.open("post", url, true);
	xmlHttp.send(null);
}

function chuli() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.responseText == "error") {
			alert("��¼ʧ��:������û�����������");
		} else {
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
			// document.getElementById("whitecontent").innerHTML="��ӭ��:<font
			// color='red'>"+usrName+"<a href='#'
			// onclick='reload()'>��˴�ˢ��ҳ��</a>";
			// document.getElementById("usr").innerHTML="";
			// alert(xmlHttp.responseText);
			// window.navigate("./getMyPub");
		}
	}
}

/** ******************************�����½����************************************* */

/** ******************************�����޸���Ϣ��ʼ************************************* */

function showUpdateDiv() {
	document.getElementById("pwd").style.display = "block";
	document.getElementById("fade").style.display = "block";
}

function updateInfo() {

	xmlHttp = GetXmlHttpObject();

	var oldUsrPassword = document.getElementById("oldUsrPassword").value;
	var newUsrPassword = document.getElementById("newUsrPassword").value;
	var reNewUsrPassword = document.getElementById("reNewUsrPassword").value;

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
			alert("�޸ĳɹ�����ȷ�������µ�¼");
			window.navigate("./exit");
		} else {
			alert("�޸�ʧ��");
			document.getElementById("pwd").style.display = "none";
			document.getElementById("fade").style.display = "none";
		}
	}

}

/** ******************************�����޸���Ϣ����************************************* */
