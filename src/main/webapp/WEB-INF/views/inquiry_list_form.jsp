<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Header Area Start -->
<%@include file="/WEB-INF/views/common/include_header.jsp"%>
<!-- Header Area End -->

<div class="cart-table-area section-padding-100">
	<div class="container-fluid">
		<div class="row">
			<div class="col-12 col-lg-20">
				<div class="cart-title mt-50">
					<h2>문의 게시판</h2>
				</div>

				<div class="cart-table clearfix">
					<table class="table table-responsive" tabindex="1"
						style="overflow: hidden; outline: none;">
			<!-- ddd -->
						<thead>
							<tr style="text-align: center;">
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
							<c:forEach var="inquiry" items="${inquiry}" begin="0" end="${inquiry.size()}">
						<tbody style="text-align: center;">
						<!--  -->
								<tr>
									<td><c:if test="${inquiry.ib_depth > 0}">
											<c:forEach begin="1" end="${inquiry.ib_depth}">
														&nbsp;&nbsp; ㄴRE :<!-- 글 제목 앞에 공백, RE -->
											</c:forEach>
										</c:if> 
												<a href="inquiry_detail?ib_no=${inquiry.ib_no}">${inquiry.ib_title}</a>
									</td>
									<td>${inquiry.member.m_id}</td>
									<td><fmt:formatDate value="${inquiry.ib_date}" pattern="yyyy-MM-dd"/>
									<td>${inquiry.ib_viewCount}</td>
								</tr>
								</tbody>
							</c:forEach>
							<!--  -->
			<!-- ddd -->		
					</table>
				</div>

				<!--  -->

			</div>
		</div>
			<hr><center><button type="button" class="btn btn-outline-warning btn-sm" onClick="inquiry_write()">작성</button>

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


<script type="text/javascript">
	function inquiry_write() {
		
		if ("${sUserId}" == "") {
			alert("로그인 후 이용가능합니다");
			location.href = "member_login_form";
			return;
		}
		
		else{
			location.href = "inquiry_write";
			return;
		}

	}

</script>
</body>

</html>