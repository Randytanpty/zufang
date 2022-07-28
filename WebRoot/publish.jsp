<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="common/check.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<TITLE>Rental2022</TITLE>
		<META content="text/html; charset=utf-8" http-equiv=Content-Type>
		<LINK rel=stylesheet type=text/css href="image/public.css">
		<LINK rel=stylesheet type=text/css href="image/huiyuan.css">
		<STYLE type=text/css>
.style1 {
	COLOR: #0033ff
}

.style2 {
	COLOR: #ff0000
}

.style21 {
	COLOR: #000000
}
</STYLE>
		<script language="javascript">
	function check() {
		if (document.getElementById("hiAddress").value == "") {
			alert("Address cannot be empty");
			return false;
		}
//		if (document.getElementById("hiFloor").value == "") {
//			alert("no empty");
//			return false;
//		}
//		if (document.getElementById("hiArea").value == "") {
//			alert("no empty");
//			return false;
//		}
		if (document.getElementById("hiPrice").value == "") {
			alert("Price cannot be empty");
			return false;
		}
		if (document.getElementById("hiAddress").value != ""
				& document.getElementById("hiFloor").value != ""
				& document.getElementById("hiArea").value != ""){
			return true;
		}
	}
</script>
	</HEAD>
	<BODY>
		<FORM action="common/doUpLoad.jsp" method=post
			enctype="multipart/form-data" name=form1 id=form1
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
						<TD vAlign=top width=254>
							<TABLE border=0 cellSpacing=0 cellPadding=0 width=269>
								<TBODY>
									<TR>
										<TD width=269>
											<IMG src="image/huiyuanindex_3.gif" width=269 height=28>
										</TD>
									</TR>
									<TR>
										<TD height=296 vAlign=top
											background=会员管理中心-沈阳房产网_files/huiyuanindex_10.gif>
											<TABLE border=0 cellSpacing=2 cellPadding=2 width=251
												align=center>
												<TBODY>
													<TR>
														<TD>
															<TABLE border=0 width="100%">
																<TBODY>
																	<TR>
																		<TD>
																			<A href="index.jsp"><IMG border=0
																					src="image/cc_3.gif" width=62 height=23>																			</A>																		</TD>
																		<TD>
																			<A href="./getMyPub"><IMG border=0
																					src="image/cc_5.gif" width=81 height=23>																			</A>																		</TD>
																		<TD>
																			<A href="./exit"><IMG border=0
																					src="image/cc_7.gif" width=62 height=23>																			</A>																		</TD>
																	</TR>
																</TBODY>
															</TABLE>														</TD>
													</TR>
													<TR>
														<TD>
															<font color="red" size="+1"><%=session.getAttribute("usrName")%></font>,Hello! Welcome to our website														</TD>
													</TR>
													<TR>
														<TD>&nbsp;														</TD>
													</TR>
													<TR>
                                                      <TD><A 
                  href="publish.jsp"> ·Post rental information</A> </TD>
												  </TR>
													<TR>
                                                      <TD>·<A 
                  href="./getMyAttention?usrID=${sessionScope.usrID }">My Focus</A> </TD>
												  </TR>
													<TR>
                                                      <TD>·<a href="javascript:showUpdateDiv();">Change password</a></TD>
												  </TR>
													<TR>
                                                      <TD>·<A href="http://www.024zf.com/huiyuan/lout.aspx">Logout</A> </TD>
												  </TR>
												</TBODY>
											</TABLE>
											<TABLE border=0 cellSpacing=0 cellPadding=0 width=243
												align=center>
												<TBODY>
													<TR>
														<TD class=lan14cu height=23
															background=files/huiyuanindex_17.gif
															width=243 align=middle>
															Notice
														</TD>
													</TR>
													<TR>
														<TD>&nbsp;
															
														</TD>
													</TR>
													<TR>
														<TD>
														  <SPAN id=Left1_lblxuzhi> <LONG Text>
														  Please release your information carefully to avoid harassment of others due to wrong calls</SPAN>
														</TD>
													</TR>
													<TR>
														<TD>&nbsp;
															
														</TD>
													</TR>
												</TBODY>
											</TABLE>
											<TABLE border=0 cellSpacing=0 cellPadding=0 width=243
												align=center>
											</TABLE>
										</TD>
									</TR>
									<TR>
										<TD>
											<IMG src="image/huiyuanindex_19.gif" width=269 height=10>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</TD>
						<TD vAlign=top width=696>
							<TABLE border=0 cellSpacing=0 cellPadding=0 align=right>
								<TBODY>
									<TR>
										<TD>
											<IMG src="image/huiyuanindex_5.gif" width=683 height=28>
										</TD>
									</TR>
									<TR>
										<TD height=295 vAlign=top
											background=files/huiyuanindex_11.gif>
											<BR>
											<BR>
											<TABLE border=0 cellSpacing=1 cellPadding=1 width=653
												bgColor=#bfd8f2 align=center>
												<TBODY>
													<TR>
														<TD class=font-14 bgColor=#d3e5f6 height=27 width=109
															align=middle>
															Location
															<SPAN class=font-hong>*</SPAN>
														</TD>
														<TD bgColor=#ffffff width=533 align=left>
															&nbsp;
															<SELECT id=strArea name="hiSection">
																<option value="Richmond" selected>
																	Richmond
																</option>
																<option value="Vancouver">
																	Vancouver
																</option>
																<option value="Burnaby">
																	Burnaby
																</option>
																<option value="Coquitlam">
																	Coquitlam
																</option>
																<option value="Surrey">
																	Surrey
																</option>
																<option value="Langley">
																	Langley
																</option>
																<option value="White Rock">
																	White Rock
																</option>
																<OPTION value=Other>
																	other
																</OPTION>
															</SELECT>
														</TD>
													</TR>

													<TR>
														<TD class=font-14 bgColor=#d3e5f6 height=27 align=middle>
															Details
															<SPAN class=font-hong>*</SPAN>
														</TD>
														<TD bgColor=#ffffff align=left>
															&nbsp;
															<INPUT style="WIDTH: 355px" id=hiAddress maxLength=50
																type=text name=hiAddress>
														</TD>
													</TR>

													<TR>
														<TD class=font-14 bgColor=#d3e5f6 height=27 align=middle>
															Room Type
															<SPAN class=font-hong>*</SPAN>
														</TD>
														<TD bgColor=#ffffff align=left>
															&nbsp;
															<SELECT id=intRoom name=hiShi>
																<OPTION selected value=1>
																	1
																</OPTION>
																<OPTION value=2>
																	2
																</OPTION>
																<OPTION value=3>
																	3
																</OPTION>
																<OPTION value=4>
																	4
																</OPTION>
																<OPTION value=5>
																	5
																</OPTION>
																<OPTION value=6>
																	6
																</OPTION>
																<OPTION value=7>
																	7
																</OPTION>
																<OPTION value=8>
																	8
																</OPTION>
																<OPTION value=9>
																	9
																</OPTION>
															</SELECT>
															Room
															<SELECT id=hiTing name=hiTing>
																<OPTION selected value=0>
																	0
																</OPTION>
																<OPTION value=1>
																	1
																</OPTION>
																<OPTION value=2>
																	2
																</OPTION>
																<OPTION value=3>
																	3
																</OPTION>
																<OPTION value=4>
																	4
																</OPTION>
																<OPTION value=5>
																	5
																</OPTION>
																<OPTION value=6>
																	6
																</OPTION>
																<OPTION value=7>
																	7
																</OPTION>
																<OPTION value=8>
																	8
																</OPTION>
																<OPTION value=9>
																	9
																</OPTION>
															</SELECT>
															Living room
															<SELECT id=hiWei name=hiWei>
																<OPTION selected value=0>
																	0
																</OPTION>
																<OPTION value=1>
																	1
																</OPTION>
																<OPTION value=2>
																	2
																</OPTION>
																<OPTION value=3>
																	3
																</OPTION>
																<OPTION value=4>
																	4
																</OPTION>
																<OPTION value=5>
																	5
																</OPTION>
																<OPTION value=6>
																	6
																</OPTION>
																<OPTION value=7>
																	7
																</OPTION>
																<OPTION value=8>
																	8
																</OPTION>
																<OPTION value=9>
																	9
																</OPTION>
															</SELECT>
															Washroom
															<SELECT id=hiChu name=hiChu>
																<OPTION selected value=0>
																	0
																</OPTION>
																<OPTION value=1>
																	1
																</OPTION>
																<OPTION value=2>
																	2
																</OPTION>
																<OPTION value=3>
																	3
																</OPTION>
																<OPTION value=4>
																	4
																</OPTION>
																<OPTION value=5>
																	5
																</OPTION>
																<OPTION value=6>
																	6
																</OPTION>
																<OPTION value=7>
																	7
																</OPTION>
																<OPTION value=8>
																	8
																</OPTION>
																<OPTION value=9>
																	9
																</OPTION>
															</SELECT>
															Kitchen
														</TD>
													</TR>
													<TR>
														<TD class=font-14 bgColor=#d3e5f6 height=27 align=middle>
															Floor
															<SPAN class=font-hong>*</SPAN>
														</TD>
														<TD bgColor=#ffffff align=left>
															&nbsp;
															<INPUT
																onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^0-9]/g,''))"
																onblur="this.value=this.value.replace(/[^0-9]/g,'');"
																style="WIDTH: 100px" id=hiFloor
																onkeypress="this.value=this.value.replace(/[^0-9]/g,'');"
																onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
																maxLength=3 type=text name=hiFloor>
														</TD>
													</TR>

													<TR>
													</TR>

													<TR>
														<TD class=font-14 bgColor=#d3e5f6 height=27 align=middle>
															Area
															<SPAN class=font-hong>*</SPAN>
														</TD>
														<TD bgColor=#ffffff align=left>
															&nbsp;
															<INPUT
																onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^0-9.]/g,''))"
																onblur="this.value=this.value.replace(/[^0-9.]/g,'');"
																style="WIDTH: 100px" id=hiArea
																onkeypress="this.value=this.value.replace(/[^0-9.]/g,'');"
																onkeyup="this.value=this.value.replace(/[^0-9.]/g,'');"
																maxLength=4 type=text name=hiArea>
															㎡
														</TD>
													</TR>

													<TR>
														<TD class=font-14 bgColor=#d3e5f6 height=27 align=middle>
															Rent
															<SPAN class=font-hong>*</SPAN>
														</TD>
														<TD bgColor=#ffffff align=left>
															&nbsp;
															<INPUT
																onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^0-9.]/g,''))"
																onblur="this.value=this.value.replace(/[^0-9.]/g,'');"
																style="WIDTH: 100px" id=hiPrice
																onkeypress="this.value=this.value.replace(/[^0-9.]/g,'');"
																onkeyup="this.value=this.value.replace(/[^0-9.]/g,'');"
																maxLength=4 type=text name=hiPrice>
														</TD>
													</TR>

													<TR>
														<TD class=font-14 bgColor=#d3e5f6 height=27 align=middle>
															Upload images
														</TD>
														<TD bgColor=#ffffff align=left>
															&nbsp;
															<input type="file" name="file" id="filePath">
														</TD>
													</TR>
													<TR>
														<TD class=font-14 bgColor=#d3e5f6 height=27 align=middle>
															Remark&nbsp;&nbsp;&nbsp;
														</TD>
														<TD bgColor=#ffffff align=left>
															&nbsp;
															<TEXTAREA style="WIDTH: 438px; HEIGHT: 122px" id=hiContent
																onKeyUp="limitChars('txtNote',200)" rows=2 cols=20
																name=hiContent></TEXTAREA>
															<input type="hidden" name="usrID"
																value="<%=session.getAttribute("usrID")%>">
														</TD>
													</TR>

													<TR>
														<TD class=font-14 bgColor=#ffffff height=27 colSpan=2
															align=middle>
															<INPUT style="WIDTH: 70px" id=Button1
																value=Release type=submit
																name=Button1>
															&nbsp;
															<INPUT value=" Re-fill " type=reset name=reset2>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
									<TR>
										<TD>
											<IMG src="image/huiyuanindex_22.gif" width=683 height=10>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
							<BR>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<p>&nbsp;
				
			</p>
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
<!-- 
					<TR>
						<TD height=21 align=middle>
							<SPAN class=STYLE22></SPAN>
						</TD>
					</TR>
					<TR>
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
							<SPAN class=black>&nbsp;&nbsp; </SPAN>ICP
						</TD>
					</TR>
-->
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

	</BODY>
</HTML>
