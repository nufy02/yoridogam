<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<script type="text/javascript" src="js/member.js"></script>   
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<<script type="text/javascript" src="js/address.js">

</script> 
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
		<script type="text/javascript">

		</script>
      <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                  <div class="col-12 col-lg-3">
                        <div class="cart-title mt-50">
                            <h2>회원가입</h2>
                        </div>
                        <div class="cart-table clearfix" id="check">
                        </div>  
                    </div>
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50">
                            <h2>&nbsp;&nbsp;</h2>
                        </div>
                        <div class="cart-table clearfix" id="check">
                        
                        <form name="f" method="post">
                       		<table	cellpadding="0" cellspacing="1" >
              
                       		<tr>
								<th width=250 align=center  height="22"> 아이디 : </th>
									<td  align="left" height="22"><input onclick="id_duplicate_check();" type="text" name="m_id" style="width: 200px" value="아이디를 입력해주세요" ></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input type="button" value="중복확인" onclick="id_duplicate_check();"></td>
							</tr>	
							
								<tr><th width=140 align=center  height="40"></th>
							<tr><th width=140 align=center  height="22"> 이름 : </th>
								<td align="left"><input type="text" 
								name="m_name" style="width: 200px" 
								placeholder="이름을 입력해주세요" 
								value="${nmember.m_name}"></td>
							</tr>
								<tr><th width=140 align=center  height="40"></th>
							<tr><th width=140 align=center  height="40"> 비밀번호 : </th>
								<td align="left" height="40"><input type="password" name="m_pass" style="width: 200px" placeholder="비밀번호를 입력해주세요"
								value ="${nmember.m_pass}"></td>
							</tr>
							<tr><th width=140 align=center  height="40"> 비밀번호확인 : </th>
								<td align="left" height="40"><input type="password" name="m_pass2" style="width: 200px" placeholder="비밀번호를 입력해주세요"
								value ="${nmember.m_pass}"></td>
							</tr>
			
							<tr><th width=140 align=center  height="30"></th>
							<tr>
								<th width=140 align=center  height="22"> 주소 : </th>
									<td align="left" height="22"> 
										<input type="text" id="postcode" style="width: 100px"placeholder="우편번호">	
									<td>
										<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
									</td>
									<tr><th width=140 align=center  height="40"></th>
										<td>
											<input type="text" id="m_address" style="width: 300px" placeholder="주소"
											value="${nmember.m_address}"><br>
										</td>
									<tr><th width=140 align=center  height="22">&nbsp;&nbsp;&nbsp;&nbsp;</th>
										<td>
											<input type="text" id="detailAddress" style="width: 150px" placeholder="상세주소">
										</td>
										<td style="padding-left: 40px">
										<input type="text" id="extraAddress" style="width: 150px" placeholder="참고항목"></td>
									</tr>
							
							<tr><th width=140 align=center  height="30"></th>
							<tr><th width=140 align=center  height="22"> 이메일 : </th>
								<td align="left"><input type="text" name="m_email"  
								style="width: 230px" placeholder="이메일을 입력해주세요" 
								value="${nmember.m_email}"></td>
							</tr>
							<tr><th width=140 align=center  height="20"></th>
							<tr><th width=140 align=center  height="22"> 핸드폰 : </th>
								<td align="left"><input type="text" name="m_phone" style="width: 200px" placeholder="핸드폰번호을 입력하세요"
								value="${nmember.m_phone}" ></td>
							</tr>
							
								<tr><th width=140 align=center  height="30"></th>
							
								<tr><th width=140 align=center  height="22"> 성별 : </th>						
								<td height="22" align="left">남성
									<input type="radio" name="m_gender"  value="${nmember.m_gender}"  checked>
								</td>
								<td align="left" height="22">여성
									<input type="radio" name="m_gender"  value="${nmember.m_gender}"  ></td>
								<tr><th width=140 align=center  height="40"></th>
								
								
								
							<tr><th width=140 align=center  height="22"> 관심분야 : </th>						
								<td height="22" align="left">비건
									<input type="checkbox" name="mi_interest"  value="${nmember.m_phone}"   checked>
								</td>
								<td height="22" align="left">빵
									<input type="checkbox" name="mi_interest"  value="빵"  checked>
								</td>
								<td height="22" align="left">쿠키
									<input type="checkbox" name="mi_interest"  value="쿠키"  checked>
								</td>
				         </table>
				         </form><br/>
				         	<div class="form-group"> </div>   
	
							 <div class="form-group">
							 	<table>
							 	<tr>
							 	<td style="padding-top: 50px;padding-left:200px">                               
							 		<input type="button" class="btn btn-info btn-md" value="가입하기" onClick="member_write_action()">
                            	</td>
                            	<tr>
                            	</table>
                            </div>                       	
                           
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->

    <!-- ##### Footer Area Start ##### -->
	<%@include file="/WEB-INF/views/common/include_footer.jsp"%>
    <!-- ##### Footer Area End ##### -->
    
    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
	<!-- Custom -->
	<script src="js/custom/cart.js"></script>
</body>

</html>