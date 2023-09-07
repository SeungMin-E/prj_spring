<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="../../../resources/css/project_nsa/user/UserPage.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<style>
		.header-container {
			display: flex;
			align-items: center;
			justify-content: flex-start;
			margin-left: 50px;
		}

        .heart {
			display: flex;
			align-items: center;
		}

		body {
			background-image: linear-gradient(#3f2874,#6e07696f ),url('img/background.jpg');
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-size: cover;
		}

		h1 {
			text-align: center;
			align-content: center;
			padding: 1rem;
		}

        .checkout-button {
            position: relative;
            top: 20px;
            right: -1150px;
        display: inline-block;
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        font-size: 16px;
        border-radius: 4px;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
        }

        .checkout-button:hover {
        background-color: #45a049;
        }

        #page-wrap {
            position: relative;
            z-index: 2;
            width: 80%; 
            border-radius: 15px;
            margin: 50px auto;
            margin-top: 150px;
            padding: 10px 30px;
            background: rgba(255, 255, 255, 0.7); /* Updated background with 30% transparency */
            box-shadow: 0 0 20px black;
			padding-bottom: 5rem;
        }

        .pqs {
			display: flex;
			justify-content: space-between;
		}

		.cart {
			padding: 15px 10px;
			height: 30px;
			cursor: pointer;
			margin: 5px;
			margin-left: .9rem;
			display: flex;
			align-content: center;
			align-items: center;
			text-align: center;
			background: #3f2874;
			border-radius: 10px;
			color: white;
			font-size: 15px;
			flex-wrap: wrap;
		}
        
		table{
            width: 100%;
            border-collapse: collapse;
        }
        
		.cart-info{
            display: flex;
            flex-wrap: wrap;
			
        }

		.cart-info {
            margin-top: 1rem;
        }

		.cart-info h3{
            padding: 1rem;
        }

		.cart-info p{
            padding: 1rem;
        }
        
		th{
            text-align: left;
            padding: 5px;
            color: #fff;
            background: #3f2874;
            font-weight: normal;
        }
        
		td{
            padding: 10px ;
        }

        td input{
            width: 40px;
            height: 30px;
            padding: 5px;
            background: rgba(255, 255, 255, 0.5);
        }
        
		.total-price{
            display: flex;
            justify-content: flex-end;
        }
        
		.total-price table{
            border-top: 3px solid #3f2874;
            width: 100%;
            max-width: 20%;
			
        }
        
		td:last-child{
            text-align: right;
        }
        
		th:last-child{
            text-align: right;
        }
	</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e402926c7b.js"
	crossorigin="anonymous"></script>

<title>마이페이지 - Prime Cube</title>
</head>
<body>
	<!-- include head 확정 -->
	<%@include file="../../index/include/header.jsp"%>
	<!-- 헤드 끝 -->
	<section>
		<div class="wrap_container">
			<div class="d-flex flex-row justify-content-center mt-5">
				<i class="fa-sharp fa-solid fa-book align-self-center"
					style="font-size: 135px; color: rgb(206, 179, 26);"></i>
				<h1 class="align-self-center">&nbsp;&nbsp;&nbsp;&nbsp;마이페이지</h1>
			</div>
			
				<!-- 프로필 테스트!  -->
					<div class="col-sm-12 text-center">

						<c:set var="type" value="1" />
						<!-- #-> -->
						<c:set var="name" value="uploadImgProfile" />
						<!-- #-> -->
						<c:choose>
							<c:when test="${seq eq 0 }">
								<img id="<c:out value="${name }"/>Preview"
									src="/resources/images/project_nsa/usr_page/logo.jpg"
									class="rounded-circle mx-auto d-block" width="100" height="100">
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${fn:length(listUploaded) eq 0 }">
										<img id="<c:out value="${name }"/>Preview"
											src="/resources/images/project_nsa/usr_page/logo.jpg"
											class="rounded-circle mx-auto d-block" width="100"
											height="100">
									</c:when>
									<c:otherwise>
										<c:set var="GetNy" value="0" />
										<c:forEach items="${listUploaded}" var="listUploaded"
											varStatus="statusUploaded">
											<c:if test="${listUploaded.type eq type }">
												<input type="hidden" id="<c:out value="${name }"/>DeleteSeq"
													name="<c:out value="${name }"/>DeleteSeq"
													value="<c:out value="${listUploaded.seq }"/>" />
												<input type="hidden"
													id="<c:out value="${name }"/>DeletePathFile"
													name="<c:out value="${name }"/>DeletePathFile"
													value="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" />
												<img id="<c:out value="${name }"/>Preview"
													src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"
													class="rounded-circle mx-auto d-block" width="100"
													height="100">
												<c:set var="GetNy" value="1" />
											</c:if>
										</c:forEach>
										<c:if test="${GetNy eq 0 }">
											<img id="<c:out value="${name }"/>Preview"
												src="/resources/xdmin/image/default_100_100.png"
												class="rounded-circle mx-auto d-block" width="100"
												height="100">
										</c:if>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
						<input type="hidden" id="<c:out value="${name }"/>Type"
							name="<c:out value="${name }"/>Type"
							value="<c:out value="${type }"/>" /> <input type="hidden"
							id="<c:out value="${name }"/>MaxNumber"
							name="<c:out value="${name }"/>MaxNumber" value="0" /> <label
							for="<c:out value="${name }"/>"
							class="form-label input-file-button"><b>+</b></label> <input
							class="form-control form-control-sm"
							id="<c:out value="${name }"/>" name="<c:out value="${name }"/>"
							type="file" multiple="multiple" style="display: none;"
							onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 1, 1, 0, 0, 3);">
					</div>
			<div class="d-flex justify-content-center mt-5">
					<!-- 인적사항 내용 창 -->
					<div class="d-flex flex-column">
						<div class="col-auto mb-3" style="width: 500px;">
							<span>이름 : </span> <span><c:out value="${user.userName }" /></span>
						</div>
						<div class="col-auto mb-3" style="width: 500px;">
							<span>성별 : </span> <span><c:out value="${user.gender }" /></span>
						</div>
						<div class="col-auto mb-3" style="width: 500px;">
							<span>아이디 : </span> <span><c:out value="${user.userID }" /></span>
						</div>
					</div>

	<form id="form" name="form" method="post" autocomplete="off" enctype="multipart/form-data">
					<!-- 이미지 첨부 테스트 -->
					<div class="col-sm-6 mt-3 mt-sm-0">
						<c:set var="type" value="2" />
						<!-- #-> -->
						<c:set var="name" value="uploadImg" />
						<!-- #-> -->
						<input type="hidden" id="<c:out value="${name }"/>Type"
							name="<c:out value="${name }"/>Type"
							value="<c:out value="${type }"/>" /> <input type="hidden"
							id="<c:out value="${name }"/>MaxNumber"
							name="<c:out value="${name }"/>MaxNumber" value="0" /> <input
							type="hidden" id="<c:out value="${name }"/>DeleteSeq"
							name="<c:out value="${name }"/>DeleteSeq" /> <input
							type="hidden" id="<c:out value="${name }"/>DeletePathFile"
							name="<c:out value="${name }"/>DeletePathFile" /> <label
							for="uploadImg" class="form-label input-file-button">이미지첨부</label>
						<input class="form-control form-control-sm"
							id="<c:out value="${name }"/>" name="<c:out value="${name }"/>"
							type="file" multiple="multiple" style="display: none;"
							onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
						<div id="<c:out value="${name }"/>Preview" class="addScroll">
							<c:forEach items="${listUploaded}" var="listUploaded"
								varStatus="statusUploaded">
								<c:if test="${listUploaded.type eq type }">
									<div
										id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>"
										style="display: inline-block; height: 95px;">
										<img
											src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"
											class="rounded" width="85px" height="85px"
											style="cursor: pointer;"
											onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
										<div style="position: relative; top: -85px; left: 5px">
											<span style="color: red; cursor: pointer;"
												onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>


					<!-- 파일첨부 테스트 -->
				
					<div class="col-sm-6 mt-3 mt-sm-0">
						<c:set var="type" value="3" />
						<!-- #-> -->
						<c:set var="name" value="uploadFile" />
						<!-- #-> -->
						<input type="hidden" id="<c:out value="${name }"/>Type"
							name="<c:out value="${name }"/>Type"
							value="<c:out value="${type }"/>" /> <input type="hidden"
							id="<c:out value="${name }"/>MaxNumber"
							name="<c:out value="${name }"/>MaxNumber" value="0" /> <input
							type="hidden" id="<c:out value="${name }"/>DeleteSeq"
							name="<c:out value="${name }"/>DeleteSeq" /> <input
							type="hidden" id="<c:out value="${name }"/>DeletePathFile"
							name="<c:out value="${name }"/>DeletePathFile" /> <label
							for="uploadFile" class="form-label input-file-button">파일첨부</label>
						<input class="form-control form-control-sm"
							id="<c:out value="${name }"/>" 
							name="<c:out value="${name }"/>"
							type="file" 
							multiple="multiple" 
							style="display: none;"
							onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 2, 0, 0, 2);">
						<div class="addScroll">
							<ul id="<c:out value="${name }"/>Preview" class="list-group">
								<c:forEach items="${listUploaded}" var="listUploaded"
									varStatus="statusUploaded">
									<c:if test="${listUploaded.type eq type }">
										<li
											id="li_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>"
											class="list-group-item d-flex justify-content-between align-items-center">
											<a
											href="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"
											download="<c:out value="${listUploaded.originalName }"/>"
											class="text-decoration-none"><c:out
													value="${listUploaded.originalName }" /></a> <span
											class="badge bg-danger rounded-pill"
											onClick="delLi('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')"><i
												class="fa-solid fa-x" style="cursor: pointer;"></i></span>
										</li>
									</c:if>
								</c:forEach>
							</ul>
						</div>
					</div>
					
					 <select id="ifmmCountryResidence" name="ifmmCountryResidence" class="form-select form-select-sm">
		                <option value="">::선택::</option>
		                <c:forEach items="${listNationality}" var="listNationality" varStatus="status">
		                	<option value="${listNationality.ifnaSeq }" <c:if test="${listNationality.ifnaSeq eq item.ifmmCountryResidence}">selected</c:if>>${listNationality.ifnaName }</option>
		                </c:forEach>
		              </select>
		              
		              <select id="ifmmAdminNy" name="ifmmAdminNy" class="form-select form-select-sm">
						<option value="0" <c:if test="${item.ifmmAdminNy eq 0 }">selected</c:if>>N</option>
						<option value="1" <c:if test="${item.ifmmAdminNy eq 1 }">selected</c:if>>Y</option>
		              </select>
				</form>
				</div>

					<!-- 변경 툴 -->
					<div class="d-grid gap-2 col-10 mx-auto">
						<button class="btn btn-primary" type="button">인적사항 변경하기</button>
						<button class="btn btn-primary" type="button">비밀번호 변경</button>
						<button class="btn btn-primary" type="button">회원 탈퇴</button>
					</div>
					<!-- 오븐 확인하고 빠진거나 부족한거 수정 예정 -->
			</div>
	</section>
	<%@include file="../../index/include/footer.jsp"%>
	
	<script type="text/javascript">
upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
	
//	objName 과 seq 는 jsp 내에서 유일 하여야 함.
//	memberProfileImage: 1
//	memberImage: 2
//	memberFile : 3

//	uiType: 1 => 이미지형
//	uiType: 2 => 파일형
//	uiType: 3 => 프로필형

	var files = $("#" + objName +"")[0].files;
	var filePreview = $("#" + objName +"Preview");
	var numbering = [];
	var maxNumber = 0;
	
	if(uiType == 1) {
		var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
		var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
		
		for(var i=0; i<tagIds.length; i++){
			var tagId = tagIds[i].getAttribute("id").split("_");
			numbering.push(tagId[2]);
		}
		
		if(uploadedFilesCount > 0){
			numbering.sort();
			maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
		}
	} else if(uiType == 2){
		var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
		var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

		for(var i=0; i<tagIds.length; i++){
			var tagId = tagIds[i].getAttribute("id").split("_");
			numbering.push(tagId[2]);
		}
		
		if(uploadedFilesCount > 0){
			numbering.sort();
			maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
		}
	} else {
		// by pass
	}
	
	$("#" + objName + "MaxNumber").val(maxNumber);

	var totalFileSize = 0;
	var filesCount = files.length;
	var filesArray = [];
	
	allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
	allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
	allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
	
	if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
	
	for (var i=0; i<filesCount; i++) {
		if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
		if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

		totalFileSize += files[i].size;
		
		filesArray.push(files[i]);
	}

	if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
	
	if (uiType == 1) {
		for (var i=0; i<filesArray.length; i++) {
			var file = filesArray[i];

			var picReader = new FileReader();
		    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
		    picReader.readAsDataURL(file);
		}			
	} else if(uiType == 2) {
		for (var i = 0 ; i < filesCount ; i++) {
			addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
		}
	} else if (uiType == 3) {
		var fileReader = new FileReader();
		 fileReader.onload = function () {
			 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
		 }	
		 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
	} else {
		return false;
	}
	return false;
}


addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
	return function(event) {
		var imageFile = event.target;
		var sort = parseInt(maxNumber) + i;

		var divImage = "";
		divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
		divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
		divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
		divImage += '</div> ';
		
		filePreview.append(divImage);
    };
}


delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
	
	$("#imgDiv_"+type+"_"+sort).remove();
	
	var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
	var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

	if(objDeleteSeq.val() == "") {
		objDeleteSeq.val(deleteSeq);
	} else {
		objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
	}
	
	if(objDeletePathFile.val() == "") {
		objDeletePathFile.val(pathFile);
	} else {
		objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
	}
}


addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

	var sort = parseInt(maxNumber) + i;
	
	var li ="";
	li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
	li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
	li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
	li += name;
	li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
	li +='</li>';
	
	filePreview.append(li);
}


delLi = function(objName, type, sort, deleteSeq, pathFile) {
	
	$("#li_"+type+"_"+sort).remove();

	var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
	var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

	if(objDeleteSeq.val() == "") {
		objDeleteSeq.val(deleteSeq);
	} else {
		objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
	}
	
	if(objDeletePathFile.val() == "") {
		objDeletePathFile.val(pathFile);
	} else {
		objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
	}
}

openViewer = function (type, sort) {
	var str = '<c:set var="tmp" value="'+ type +'"/>';
	$("#modalImgViewer").append(str);
	$("#modalImgViewer").modal("show");
}


</script>
</body>
</html>