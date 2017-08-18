<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<%@include file="../include/header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table{
		
	}
</style>
</head>
<body>
	<form action="attendance.do" method="post">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<%
				Calendar cal = Calendar.getInstance();
				int year = request.getParameter("y") == null ? cal.get(Calendar.YEAR) : Integer.parseInt(request.getParameter("y"));
				int month = request.getParameter("m") == null ? cal.get(Calendar.MONTH) : (Integer.parseInt(request.getParameter("m"))-1);
				
				//시작 요일 확인
				// - Calendar Month 0-11
				cal.set(year, month, 1);
				int bgnWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				//다음, 이전 월 계산
				// - Month 계산 시 표기월로 계산하기 때문에 +1한 상태에서 계산함
				int prevYear = year;
				int prevMonth = (month+1)-1;
				int nextYear = year;
				int nextMonth = (month+1)-1;
				
				//1월일 경우 이전년 12월로 지정
				if(prevMonth<1){
					prevYear--;
					prevMonth = 12;
				}
				//12월일 경우 다음년 1월로 지정
				if(prevMonth>12){
					nextYear++;
					nextMonth = 1;
				}
			%>
				<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="center">
							<a href="./calendar.jsp?y=<%=prevYear%>&m=<%=prevMonth%>">◀</a>
							<%=year%>년 <%=month+1%>월
							<a href="./calendar.jsp?y=<%=nextYear%>&m=<%=nextMonth%>">▶</a>
						</td>
					</tr>
					<tr>
						<td>
							<table border="0">
								<tr>
									<td>일</td>
									<td>월</td>
									<td>화</td>
									<td>수</td>
									<td>목</td>
									<td>금</td>
									<td>토</td>
								</tr>
								<tr>
								<%
									//시작 요일까지 이동
									for(int i=1; i<bgnWeek; i++) out.println("<td>&nbsp;</td>");
								
									//첫날~ 마지막날 처리
									while (cal.get(Calendar.MONTH) == month){
										out.println("<td>"+cal.get(Calendar.DATE)+"</td>");
										
										//토요일인 경우 다음줄로 생성
										if(cal.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY) out.println("</tr><tr>");
										
										//날짜 증가시키지
										cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.get(Calendar.DATE)+1);
									}
									
									//끝날부터 토요일까지 빈칸으로 처리
									for(int i=cal.get(Calendar.DAY_OF_WEEK); i<=7; i++)out.println("<td>&nbsp;</td>");
								%>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<input id="button" type="submit" value="출석하기" >
			</div>
			<div class="col-md-3"></div>
		</div>
	</form>
</body>
</html>