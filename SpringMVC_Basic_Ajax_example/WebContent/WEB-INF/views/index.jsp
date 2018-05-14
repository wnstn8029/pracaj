<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#ajaxBtn').click(function(){
				
				 $.ajax(
						 {  //jso
							type : "post",
							url  : "json.ajax",
							success : function(data){  //서버 {"menu",list}   //data > {}
								console.log(data);
								$('#menuView').empty();
								var opr="<table border='1px'>";
								$.each(data.emp,function(index,emp){
									opr += "<tr><th>"+emp.empno+
									"</th><th>"+emp.ename+
									"</th><th>"+emp.job+
									"</th><th>"+emp.mgr+
									"</th><th>"+emp.hiredate+
									"</th><th>"+emp.sal+
									"</th><th>"+emp.comm+
									"</th><th>"+emp.deptno+
									"</th><th><input type='button' value='수정' class ='update'  value2="+emp.empno+
									"></th><th><input type='button' value='삭제' class ='delete' value2="+emp.empno+"></th></tr>";
								});
								$('#menuView').append(opr);
								
							} 
						 } 
				       )    
			});
			
		});
	
	</script>
</head>
<body>
	<input type="button" value="Spring-json" id="ajaxBtn">
	<hr>
	<span id="menuView"></span>
</body>
</html>