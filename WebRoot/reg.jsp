<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<TITLE>Rental2022</TITLE>
		<META content="text/html; charset=utf-8" http-equiv=Content-Type>
		<LINK rel=stylesheet type=text/css href="image/public.css">
		<LINK rel=stylesheet type=text/css href="image/huiyuan.css">
		<script type="text/javascript" src="js/aJax.js"></script>
		<STYLE type=text/css>
.style1 {
	COLOR: #0033ff
}

.style2 {
	COLOR: #ff0000
}
.STYLE3 {color: #CCCCCC}
        </STYLE>
		<script language="javascript">
	function check() {
		var usrAccount = document.getElementById("usrAccount").value;
		var usrPassword = document.getElementById("usrPassword").value;
		var repassword = document.getElementById("repassword").value;
		var yanzhengma= document.getElementById("yanzhengma").value;
		var usrName = document.getElementById("usrName").value;
		var usrPhone = document.getElementById("usrPhone").value;
		var usrEmail = document.getElementById("repassword").value;
		
		if (usrAccount == "") {
			alert("Account name cannot be empty！");
			return false;
		}else if(yanzhengma==""){
			alert("Captcha cannot be empty！");
			return false;
		}else if (usrPassword == "") {
			alert("Password cannot be empty！");
			return false;
		} else if (repassword == "") {
			alert("Confirm that the password is not empty！");
			return false;
		} else if (usrName == "") {
			alert("User name cannot be empty！");
			return false;
		} else if (usrPhone == "") {
			alert("The phone number name cannot be empty！");
			return false;
		} else if (usrPassword != repassword) {
			alert("Password and confirmation password do not match each other！");
			return false;
		} else if (document.getElementById("usrEmail").value!=""&document.getElementById("usrEmail").value
				.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) == -1) {
			alert("Inaccurate Mailbox Grid！");
			return false;
		}else if(document.getElementById("Cktiaokuan").checked==false){
				alert("For users of this site, the agreement must be unified, otherwise the service cannot be provided to you！");
				return false;
		} else {
			return true;
		}

	}
</script>
		<META name=GENERATOR content="MSHTML 8.00.6001.18702">
	</HEAD>
	<BODY>
		<FORM id=form1 method=post name=form1 action="./reg"
			onSubmit="return check()">
			<DIV>
				<TABLE border=0 width=950 align=center height=70>
					<TBODY>
						<TR>
							<TD width=200>
								<A href="index.jsp"><IMG border=0 src="image/xiaoheng1.png"
										width=200 height=65>
								</A>
							</TD>
							<TD width=375 align=right>
								<IMG src="image/xiaoheng1.png" width=363 height=60>
							</TD>
							<TD width=375 align=right>
								<IMG src="image/xiaoheng1.png" width=363 height=60>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
			<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
				<TBODY>
					<TR>
						<TD height=6></TD>
					</TR>
					<TR>
						<TD></TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE border=0 cellSpacing=0 cellPadding=0 width=962 align=center>
				<TBODY>
					<TR>
						<TD width=962>
							<IMG src="image/reg_7.gif" width=962 height=28>
						</TD>
					</TR>
					<TR>
						<TD height=328 vAlign=top background=image/reg_10.gif>
							<BR>
							<BR>
							<TABLE border=0 cellSpacing=3 cellPadding=3 width=881
								align=center>
								<TBODY>
									<TR>
										<TD width=869>
											<SPAN class=lan16cu>Create an account</SPAN> with
											<SPAN class="font-hong font-cu">*</SPAN>is required
										</TD>
									</TR>
									<TR>
										<TD>
											<IMG src="image/reg_13.gif" width=869 height=6>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
							<TABLE border=0 cellSpacing=2 cellPadding=2 width=881
								align=center>
								<TBODY>
									<TR>
										<TD width=214 align=right>
											UserName：
											<SPAN class=font-hong>*</SPAN>										</TD>
										<TD>
											<TABLE border=0 cellSpacing=0 cellPadding=0 width="94%">
												<TBODY>
													<TR>
														<TD width=3>
															<INPUT
																onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^-0-9A-Za-z_@.]/g,''))"
 																style="WIDTH: 266px" id=usrAccount
																onkeypress="this.value=this.value.replace(/[^-0-9A-Za-z_@.]/g,'');"
																onkeyup="this.value=this.value.replace(/[^-0-9A-Za-z_@.]/g,'');"
																maxLength=20 type=text name=usrAccount onBlur="checkUsrName()"
																>														</TD>
														<TD width=10>&nbsp;													  </TD>
														<TD width=3>&nbsp;</TD>
														<TD width=307><span id="msg">（Check if the user name is already occupied）</span>														</TD>
													</TR>
												</TBODY>
											</TABLE>										</TD>
									</TR>
									<TR>
										<TD width=214 align=right>
											<SPAN class=font-hong >rule：</SPAN>										</TD>
										<TD class=font-hong><font color="grey">
											User name length must be greater than or equal to 6 bits, can only be composed of English and numbers</font>								</TD>
									</TR>
									<TR>
									  <TD align=right>code： <SPAN class=font-hong>*</SPAN></TD>
									  <!--  <TD><input name="yanzhengma" type="text" id="yanzhengma" size="8" maxlength="4">
									    <img src="yanzhengma" id="yzm" onClick="reloadCode()"><a href="javascript:reloadCode()">Can't see clearly? Click to change the verification code</a>-->
                                        <script language="javascript">
											function reloadCode(){
												//alert(document.getElementById("yzm").src);
												document.getElementById("yzm").src="yanzhengma?date="+new Date();
											}
										</script></TD>
								  </TR>
									<TR>
										<TD align=right>
											password：
											<SPAN class=font-hong>*</SPAN>										</TD>
									  <TD>
											<INPUT style="WIDTH: 266px" id=usrPassword maxLength=20
												type=password name=usrPassword onBlur="doPassword()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="passwordSpan"></span></TD>
									</TR>
									<script language="javascript">
									function doPassword(){
										if(document.getElementById("usrPassword").value!=""&document.getElementById("usrPassword").value.length>=6){
										document.getElementById("passwordSpan").innerHTML="<font color='red'>√</font>";
										}else{
										document.getElementById("passwordSpan").innerHTML="<font color='red'>Ⅹ</font>";
										}
									}
									</script>
									<TR>
										<TD align=right>
											Repeat password：
											<SPAN class=font-hong>*</SPAN>										</TD>
										<TD>
											<INPUT style="WIDTH: 266px" id=repassword maxLength=20
												type=password name=repassword onBlur="doRepassword()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="rePasswordSpan"></span>									</TD>
									</TR>
									<script language="javascript">
									function doRepassword(){
										if(document.getElementById("repassword").value!=""&document.getElementById("repassword").value.length>=6&document.getElementById("usrPassword").value==document.getElementById("repassword").value){
										document.getElementById("rePasswordSpan").innerHTML="<font color='red'>√</font>";
										}else{
										document.getElementById("rePasswordSpan").innerHTML="<font color='red'>Ⅹ</font>";
										}
									}
									</script>
								</TBODY>
							</TABLE>
							<BR>
							<BR>
							<TABLE border=0 cellSpacing=3 cellPadding=3 width=881
								align=center>
								<TBODY>
									<TR>
										<TD width=869>
											<SPAN class=lan16cu>Basic Information Settings </SPAN> with
											<SPAN class="font-hong font-cu">*</SPAN>is required, the other optional items, optional items can not be filled
										</TD>
									</TR>
									<TR>
										<TD>
											<IMG src="image/reg_13.gif" width=869 height=6>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
							<TABLE border=0 cellSpacing=2 cellPadding=2 width=881
								align=center>
								<TBODY>
									<TR>
										<TD width=214 align=right>
											 Real name or nickname：
											<SPAN class=font-hong>*</SPAN>
										</TD>
										<TD>
											<LABEL>
												<INPUT style="WIDTH: 266px" id=usrName maxLength=10
													type=text name=usrName>
											</LABEL>
										</TD>
									</TR>
									<TR>
										<TD align=right>
											sex：&nbsp;
										</TD>
										<TD>
											<TABLE id=sex border=0>
												<TBODY>
													<TR>
														<TD>
															<INPUT id=sex_0 value=男 CHECKED type=radio name=usrSex>
															<LABEL for=sex_0>
																Male
															</LABEL>
														</TD>
														<TD>
															<INPUT id=sex_1 value=女 type=radio name=usrSex>
															<LABEL for=sex_1>
																Female
															</LABEL>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
									<TR>
										<TD align=right>
											phone number：
											<SPAN class=font-hong>*</SPAN>
										</TD>
										<TD>
											<INPUT
												onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^0-9]/g,''))"
												onblur="this.value=this.value.replace(/[^0-9]/g,'');"
												style="WIDTH: 266px" id=usrPhone
												onkeypress="this.value=this.value.replace(/[^0-9]/g,'');"
												onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
												maxLength=30 type=text name=usrPhone>
										</TD>
									</TR>
									<TR>
										<TD align=right>
											Address：&nbsp;
										</TD>
										<TD>
											<INPUT style="WIDTH: 266px" id=usrAddress maxLength=20
												type=text name=usrAddress>
											(Optional)
										</TD>
									</TR>
									<TR>
										<TD align=right>
											Email：&nbsp;
										</TD>
										<TD>
											<INPUT style="WIDTH: 266px" id=usrEmail maxLength=50
												type=text name=usrEmail>
											(Optional)
										</TD>
									</TR>
								</TBODY>
							</TABLE>
							<BR>
							<TABLE border=0 width=881>
								<TBODY>
									<TR>
										<TD width=256 height=34 align=right valign="bottom"><input id=Cktiaokuan checked type=checkbox name=Cktiaokuan>									  </TD>
									  <TD width=615 align=left><textarea cols="70" rows="10" readonly="readonly">        When applying to use the services of this website, users must provide true personal information and keep the registration information updated. If the problems caused by the registration information is not true and its consequences, this site does not bear any responsibility.
　　 In the process of using the services of this website, users must comply with the relevant national laws and regulations, and must not use the platform of this website to publish illegal contents that endanger national security, pornography, violence, etc.; must not use the platform of this website to publish contents that contain false, harmful, coercive, infringing on others' privacy, harassment, infringement, vilification, vulgarity, or other morally objectionable contents.
　　 If the user's use of this service violates any national laws and regulations or violates the legitimate rights and interests of any third party, this site has the right to directly delete the content of such violations.
    The Internet is an open platform, and users may be copied, reprinted, altered or used for other illegal purposes by other organizations or individuals if they upload the contents of their listings to the Internet. The user expressly agrees that the risk of using the services of this website will be entirely borne by him/her; all consequences arising from his/her use of the services of this website will also be borne by him/her, and this website will not bear any responsibility for the user.
　　 This website does not guarantee that the service will meet the user's requirements, nor does it guarantee that the service will not be interrupted, and the timeliness, safety and accuracy of the service are not guaranteed. The website does not assume any responsibility for interruption of network services or other defects caused by force majeure or reasons beyond the control of the website.
    If it is necessary to suspend network services or adjust service functions due to system maintenance or upgrading, the website will make prior notice on the website as far as possible.
　　 In the event of any of the following circumstances, the website has the right to unilaterally interrupt or terminate the services provided to the user without notice to the user.
　　　 ◇The personal information provided by the user is untrue.
　　　 ◇The user violates the rules of use stipulated in the Terms of Service.
    This website will have the right to improve and modify the Terms of Service from time to time in accordance with the development of the Internet and changes in the relevant laws and regulations of the People's Republic of China. This website reserves the right to modify the Terms of Service at any time. It is necessary for users to carefully read and reconfirm the latest Terms of Service of this website when using the platform services of this website, and in case of relevant disputes, please refer to the latest Terms of Service.
	If the user's use of this service violates any national laws and regulations or infringes on the legitimate rights and interests of any third party, this website has the right to directly delete the information that violates the provisions, and may suspend or terminate the service to the user.
　　 If the user uses the service to engage in any illegal or infringing behavior, the user shall be fully responsible for the user's own responsibility, and the user shall be responsible for full compensation for any loss caused to the website or any third party as a result.

　　 * The final interpretation of these terms and conditions shall belong to this website




Translated with www.DeepL.com/Translator (free version)

</textarea></TD>
									</TR>
									<TR>
										<TD align=middle>&nbsp;									  </TD>
										<TD align=left>
											&nbsp;
											<input type="submit" name="Submit" value="Agree and registe">										</TD>
									</TR>
									<TR>
										<TD>&nbsp;									  </TD>
										<TD>&nbsp;									  </TD>
									</TR>
								</TBODY>
							</TABLE>
							<BR>
							<BR>
						</TD>
					</TR>
					<TR>
						<TD>
							<IMG src="image/reg_19.gif" width=962 height=11>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
				<TBODY>
					<TR>
						<TD>&nbsp;
							
						</TD>
					</TR>
					<TR>
						<TD>
							<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
								<TBODY>
									<TR>
										<TD bgColor=#bbd6f1 height=1></TD>
									</TR>
								</TBODY>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD height=21 align=middle>
							<SPAN class=STYLE22>Randy Tan</SPAN>
						</TD>
					</TR>
<!-- 					<TR>
 						<TD height=20 align=middle>
							
							<SPAN class=black>&nbsp;&nbsp;&nbsp;</SPAN>
							<SPAN class=black>&nbsp;&nbsp;</SPAN>E-mail：
						</TD>
					</TR>
					<TR>
						<TD height=26 align=middle>
							
							<SPAN class=black>&nbsp;&nbsp;</SPAN> 
						</TD>
					</TR>
					<TR>
						<TD height=26 align=middle>
							Copyright181.cc All Rights Reserved
							<SPAN class=black>&nbsp;&nbsp; </SPAN>ICP证：辽B-2-4-20090106
						</TD>
					</TR>-->

					<TR>
						<TD height=40 align=middle>
							<SCRIPT type=text/javascript>
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
			: " http://");
	document
			.write(unescape("%3Cscript src='"
					+ _bdhmProtocol
					+ "hm.baidu.com/h.js%3F5b48cf6d948c70034f7a239f8e5c566d' type='text/javascript'%3E%3C/script%3E"));
</SCRIPT>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</FORM>
		<SCRIPT src="image/ajax.js"></SCRIPT>

		<SCRIPT src="image/huiyuan.js"></SCRIPT>
	</BODY>
</HTML>
