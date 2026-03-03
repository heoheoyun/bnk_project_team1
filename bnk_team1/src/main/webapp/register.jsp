<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>주문등록</h1>


<table border = "1">
	<tbody>
		<tr>
			<td>주문번호</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td>주문점포</td>
			<td>
			<select name="orderBranch">
				<option value="" selected disabled>점포선택</option>
				<option value="S001">AA 할인점</option>
				<option value="S002">BB 할인점</option>
				<option value="S003">CC 할인점</option>
				<option value="S004">DD 할인점</option>
			</select>
			</td>
		</tr>
		<tr>
			<td>주문일자</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td>제품코드</td>
			<td>
				<select name="product">
					<option value="" selected disabled>코드선택</option>
					<option value="AA01">삼각김밥</option>
					<option value="AA02">도시락</option>
					<option value="AA03">봉지만두</option>
					<option value="AA04">컴라면</option>
					<option value="AA05">아메리카노</option>
					<option value="AA06">콜라</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>주문수량</td>
		</tr>
		<tr style="text-align: center;">
			<td colspan="2" style="align-items: center">
				<button>주문등록</button>
				<button>다시쓰기</button>
			</td>
			
		</tr>
	</tbody>
</table>

<script>


	const xhr = new XMLHttpRequest() ;
	
	xhr.onload = function(){
		
	}
	
	xhr.open()
	xhr.send()
	
	
</script>
</body>
</html>