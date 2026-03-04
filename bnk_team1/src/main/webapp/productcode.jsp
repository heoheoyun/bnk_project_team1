<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>제품 코드 조회</h2>
	<table>
		<thead>
			<tr>
				<th>제품코드</th>
				<th>제품명</th>
				<th>단가</th>
				<th>할인율(10%)</th>
				<th>할인율(15%)</th>
			</tr>
		</thead>
		
		<tbody></tbody>
	</table>
	
	<script>
		const tbody = document.querySelector('tbody');
		let tr, td;
		fetch('productcode')
		.then(data => data.json())
		.then(data =>{
			data.forEach(e=>{
				tr = document.createElement('tr');
				
				td = document.createElement('td');
				td.innerHTML = e.pcode;
				tr.appendChild(td);
				
				td = document.createElement('td');
				td.innerHTML = e.pname;
				tr.appendChild(td);
				
				td = document.createElement('td');
				td.innerHTML = e.cost;
				tr.appendChild(td);
				
				td = document.createElement('td');
				td.innerHTML = e.ten;
				tr.appendChild(td);
				
				td = document.createElement('td');
				td.innerHTML = e.fif;
				tr.appendChild(td);	
				
				tbody.appendChild(tr);
			})
 			
		})
	
	</script>
</body>
</html>