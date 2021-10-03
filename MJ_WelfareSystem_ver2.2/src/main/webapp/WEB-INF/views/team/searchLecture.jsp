<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<link rel="../stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="../preconnect" href="https://fonts.gstatic.com">
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">
<link href="../css/buttons.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- Bootstrap core JavaScript-->
<script src="../resources/vendor/jquery/jquery.min.js"></script>
<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="../resources/vendor/bootstrap/js/sb-admin-2.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="../js/jquery-3.5.1.min.js"></script>
<script src="../js/createTeam.js"></script>

<title>search Lecture</title>
</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/homeView/menubar.jsp"></jsp:include>
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
				<jsp:include page="/WEB-INF/views/homeView/topbar.jsp"></jsp:include>
				<div class="container-fluid"></div>
				<div class="row justify-content-center">
				<div class="col-xl-10 col-lg-12 col-md-9">
					<div class="card o-hidden border-0 shadow-lg my-5" style="width: 498px; margin: 0 auto;">
						<div class="card-body p-0">
							<!-- Nested Row within Card Body -->
							<div class="col-lg-12">
								<div class="p-5">
									<div class="text-center">
										<h4 class="text-primary mb-5">강의 검색</h4>
									</div>
									<form action="createTeam?LectureName=${LectureName}" name="SearchLecture" method="GET" id="form">
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										<div class="form-group">
											<div class="input-group">
                            					<input type="text" class="form-control bg-light border-0 small" name="LectureName" id="lectureName"
                            						autofocus placeholder="강의명 검색" aria-label="Search" aria-describedby="basic-addon2" value="${LectureName}">
                            					<div class="input-group-append">
                                					<button class="btn btn-primary" name="Search" id="search">
                                    				<i class="fas fa-search fa-sm"></i>
                                					</button>
                            					</div>
                       					 		</div>
											</div>
                    				</form>
					                <script>
					                   $(document)
					                         .ready(
					                               function() {
					                                  let result = '<c:out value="${Checker}"/>';
					                                  checkAlert(result);
					                                  function checkAlert(result) {
					                                     if (result === '') {
					                                        return;
					                                     } else if (result === "NoLecture") {
					                                        alert("잘못된 검색어입니다.");
					                                     } else if (result === "UserNotFound") {
					                                        alert("잘못된 정보를 기입하셨습니다. 정보 확인 후 다시 입력해주세요");
					                                     }
					                                  }
					                               });
					                </script>                    				
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<jsp:include page="/WEB-INF/views/homeView/footer.jsp"></jsp:include>
		</div>
	</div>

	<!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

</body>

</html>