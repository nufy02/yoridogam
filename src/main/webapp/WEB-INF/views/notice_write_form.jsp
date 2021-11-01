<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>  
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="js/address.js">

</script> 
<body>
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
          <div class="cart-table-area section-padding-100" >
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-20">
                        <div class="notice-title">
                            <h2>공지사항</h2>
                        </div>
                        
						<div class="cart-table clearfix" id="check">
                        </div>  
                    </div>
                    <div class="col-12 col-lg-20">
                    <div class="cart-title mt-50">
					<table>
						 <tr>
							<td align="center">제목</td>
							<td><input name="noti_title" id="noti_title" placeholder="제목을 입력하세요." 
									size="50" maxlength="100"></td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align="center">작성자</td>
							<td><input name="sUserId" id="sUserId" size="50" maxlength="100" placeholder="&nbsp;${sUserId }" readonly></td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align="center">내용</td>
							<td><textarea name="noti_content" id="noti_content" cols="50" rows="13"placeholder="내용을 작성해 주세요." ></textarea></td>
							<td>&nbsp;</td>
						</tr>
						<hr>
						
					</table>

				 	<center><button type="button" class="btn btn-outline-warning btn-sm" onClick="location.href='noti_write_action'">작성</button>                
					    
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