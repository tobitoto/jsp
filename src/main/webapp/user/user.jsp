<%@page import="kr.or.ddit.paging.model.PageVO"%>
<%@page import="kr.or.ddit.user.model.UserVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="ko">
<script>
 $(document).ready(function(){
	 
	$("#updatebtn").on("click",function(){
		$("#frm").submit();
		
	});
	 
 });


</script>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>사용자 리스트</title>
	
	<!-- css, js -->
	<%@include file="/common/basicLib.jsp" %>
</head>

<body>

	<!-- header -->
	<%@include file="/common/header.jsp" %>
	
	<div class="container-fluid">
		<div class="row">
			<!-- left -->
			<%@include file="/common/left.jsp" %>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="row">
				<div class="col-sm-8 blog-main">
					<h2 class="sub-header">사용자상세</h2>
					<form id="frm" class="form-horizontal" role="form" method="get"
						action="${pageContext.request.contextPath }/userModify">
						
						<input type="hidden" id="userId" name="userId" value="${userVo.userId}"/>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 사진</label>
						<div class="col-sm-10">
							<img alt="샐리" src="${pageContext.request.contextPath }/profile?userId=${userVo.userId}"/>
						</div>
					</div>

					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 아이디</label>
						<div class="col-sm-10">
							<label class="control-label">${userVo.userId }</label>
<!-- 							<input type="text" class="form-control" id="userId" name="userId" -->
<!-- 								placeholder="사용자 아이디"> -->
						</div>
					</div>

					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 이름</label>
						<div class="col-sm-10">
							<label class="control-label">${userVo.name }</label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">별명</label>
						<div class="col-sm-10">
							<label class="control-label">${userVo.alias }</label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">주소</label>
						<div class="col-sm-10">
							<label class="control-label">${userVo.addr1 }</label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">상세주소</label>
						<div class="col-sm-10">
							<label class="control-label">${userVo.addr2 }</label>
						</div>
					</div>

					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">우편번호</label>
						<div class="col-sm-10">
							<label class="control-label">${userVo.zipcd }</label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">생일</label>
						<div class="col-sm-10">
							<label class="control-label"><fmt:formatDate value="${userVo.birth}" pattern = "yyyy-mm-dd"/> </label>
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button id="updatebtn" type="submit" class="btn btn-default">사용자 수정</button>
						</div>
					</div>
				</form>

				
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>