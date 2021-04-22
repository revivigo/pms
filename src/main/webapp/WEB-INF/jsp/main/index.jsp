<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title><s:message code="common.pageTitle"/></title>
    <link href="css/sb-admin/bootstrap.min.css" rel="stylesheet">
    <link href="css/sb-admin/metisMenu.min.css" rel="stylesheet">
    <link href="css/sb-admin/sb-admin-2.css" rel="stylesheet">
    <link href="css/sb-admin/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="js/jquery-2.2.3.min.js"></script>
	<script src="js/jquery-ui.js"></script>
    <script src="css/sb-admin/bootstrap.min.js"></script>
    <script src="css/sb-admin/metisMenu.min.js"></script>
    <script src="css/sb-admin/sb-admin-2.js"></script>
	<script src="js/project9.js"></script>    
<script>

function fn_formSubmit(){
	document.form1.submit();	
}

</script>
    
</head>

<body>

    <div id="wrapper">

		<jsp:include page="../common/navigation.jsp" />
		
        <div id="page-wrapper">
            <p>&nbsp;</p>       
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
			         <button type="button" class="btn btn-default pull-right" onclick="fn_moveToURL('projectForm')">
			         <i class="fa fa-edit fa-fw"></i> <s:message code="project.new"/></button>
				</div>
            </div>            
            <p>&nbsp;</p>       
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
					<c:forEach var="listview" items="${listview}" varStatus="status">
						<c:url var="link" value="task">
							<c:param name="prno" value="${listview.prno}" />
						</c:url>
		                <div class="col-lg-4">
		                    <div class="panel panel-default">
		                        <div class="panel-heading">
		                            <a href="${link}"><c:out value="${listview.prtitle}"/></a>
		                        </div>
		                        <div class="panel-body">
		                            <p><c:out value="${listview.usernm}"/> (<c:out value="${listview.prstatus}"/>)</p>
									<p><c:out value="${listview.prstartdate}"/>~<c:out value="${listview.prenddate}"/></p>
		                        </div>
		                    </div>
		                </div>					
					</c:forEach>	
            	</div>    
            </div>
            <div class="row">
                <div class="col-lg-12">
					<br/>
					<form role="form" id="form1" name="form1"  method="post">
					    <jsp:include page="../common/pagingforSubmit.jsp" />
				    
						<div class="form-group">
		                   <div class="input-group custom-search-form col-lg-3">
	                            <input class="form-control" placeholder="Search..." type="text" name="searchKeyword" 
	                                	   value='<c:out value="${searchVO.searchKeyword}"/>' >
	                            <span class="input-group-btn">
	                                <button class="btn btn-default" onclick="fn_formSubmit()">
	                                    <i class="fa fa-search"></i>
	                                </button>
	                            </span>
	                       </div>
						</div>
					</form>	
            	</div>    
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
</body>

</html>