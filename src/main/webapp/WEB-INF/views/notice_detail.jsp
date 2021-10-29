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
				<div class="notice-title">
					<h2>공지사항</h2>
				</div>

				<div class="notice-table clearfix" id="check">
					<!-- 내용 들어갈 자리 시작 -->
					<form name="f" method="post">
					<input type="hidden" name="noticeNo" value="${notice.selectByNotiNo()}">
						<table border="0" cellpadding="0" cellspacing="1" width="590px"	>
						<c:forEach var="notice" items="${notiList}" begin="0" end="${notiList.size()}">
							<tr>
								<td width=300 align=center bgcolor="E6ECDE" height="22">제목</td>
								<td width=490 bgcolor="ffffff" style=" padding-left: 10px" align="left">${notice.noti_title}</td>
							</tr>
						</c:forEach>

						</table>

							</form> 
				</div>
				<!-- 내용 들어갈 자리 끝 -->
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