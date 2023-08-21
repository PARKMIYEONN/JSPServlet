<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#searchResult {
		width: 70%;
		height: 500px;
		border: 1px solid red;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('button').click(function(){
			// 날짜 추출
			let searchDate = $('#searchDate').val().split('-').join('')
			console.log(searchDate)
			// 2023-06-21 박스오피스 요청
			$.ajax({
				url:'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
				type: 'get',
				data:{
					key: 'c2f7095c6e9cfda7141ebd3008a4b54e',
					//targetDt: '20230621',
					targetDt: searchDate,
					itemPerPage: '5'
				},
				success: callback
				, error: function(){
					alert('실패')
				}
			})
		})
	})
	
	function callback(result){
			$('#searchResult').empty()
		/* list = result.boxOfficeResult.dailyBoxOfficeList	 전역변수 */
		let list = result.boxOfficeResult.dailyBoxOfficeList
		for(let i = 0; i < list.length; i++){
			let movieInfo = list[i]
			let name = movieInfo.movieNm
			let rank = movieInfo.rank
			let audiCnt = movieInfo.audiCnt
		/*console.log(name, rank, audiCnt)*/
		
			$('#searchResult').append('<h4>' + rank + '위</h4>')
			$('#searchResult').append('<strong>'+ name + '</strong>(' + audiCnt + '명)')
			$('#searchResult').append('<button>상세보기</button>')
			$('#searchResult').append('<hr>')
		}
	}
</script>
</head>
<body>
	<h2>일별 박스오피스 서비스</h2>
	검색일 : <input type="date" id="searchDate"><button>검색</button>
	<h3>검색결과</h3>
	<div id="searchResult"></div>
</body>
</html>