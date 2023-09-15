<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<%@page import="java.util.*" %>
<%@page import="com.kwce.domain.SubjectVO"%>
<%@page import="com.kwce.domain.ApplistVO"%>


<div class="row">
   <div class="col-lg-12">
      <h1 class="page-header">성적 조회</h1>
   </div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<html>
<head>
   <meta charset="UTF-8">
   
</head>
<body>
<%
       ArrayList<ApplistVO> arr =(ArrayList<ApplistVO>)request.getAttribute("userinfo");
	ArrayList<ApplistVO> arrM =(ArrayList<ApplistVO>)request.getAttribute("major");
	ArrayList<ApplistVO> arrC =(ArrayList<ApplistVO>)request.getAttribute("culture");
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Line_Controls_Chart</title>
 
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <!-- google charts -->
       <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  </head>
  <body>
 
    <h4>학점 추이 그래프</h4>
 
    <div id="Line_Controls_Chart">
      <!-- 라인 차트 생성할 영역 -->
          <div id="lineChartArea" style="padding:0px 20px 0px 0px;"></div>
      <!-- 컨트롤바를 생성할 영역 -->
          <div id="controlsArea" style="padding:0px 20px 0px 0px;"></div>
        </div>
 
  </body>

  <script>
 
  var chartDrowFun = {
 
    chartDrow : function(){
        var chartData = 'dd학기';
 
        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
        var chartDateformat     = '학기: ';
        //라인차트의 라인 수
        var chartLineCount    = 8;
        //컨트롤러 바 차트의 라인 수
        var controlLineCount    = 8;
 
 
        function drawDashboard() {
 
          var data = new google.visualization.DataTable();
          //그래프에 표시할 컬럼 추가
          data.addColumn('number' , '학기');
          data.addColumn('number'   , '전공');
          data.addColumn('number'   , '교양');
          data.addColumn('number'   , '전체');
 
          //그래프에 표시할 데이터
          var dataRow = [];
 
          dataRow = [1, <%=arrM.get(0).getMajor_rate()%>, <%=arrC.get(0).getCulture_rate() %>,<%=arr.get(0).getRate() %>];
          data.addRow(dataRow);
          dataRow = [2, <%=arrM.get(1).getMajor_rate() %>, <%=arrC.get(1).getCulture_rate() %>,<%=arr.get(1).getRate() %>];
          data.addRow(dataRow);
          dataRow = [3, <%=arrM.get(2).getMajor_rate() %>, <%=arrC.get(2).getCulture_rate() %>,<%=arr.get(2).getRate() %>];
          data.addRow(dataRow);
          dataRow = [4, <%=arrM.get(3).getMajor_rate() %>, <%=arrC.get(3).getCulture_rate() %>,<%=arr.get(3).getRate() %>];
          data.addRow(dataRow);
          dataRow = [5, <%=arrM.get(4).getMajor_rate() %>, <%=arrC.get(4).getCulture_rate() %>,<%=arr.get(4).getRate() %>];
          data.addRow(dataRow);
          dataRow = [6, <%=arrM.get(5).getMajor_rate() %>, <%=arrC.get(5).getCulture_rate() %>,<%=arr.get(5).getRate() %>];
          data.addRow(dataRow);
          dataRow = [7, <%=arrM.get(6).getMajor_rate() %>, <%=arrC.get(6).getCulture_rate() %>,<%=arr.get(6).getRate() %>];
          data.addRow(dataRow);
          dataRow = [8, <%=arrM.get(7).getMajor_rate() %>, <%=arrC.get(7).getCulture_rate() %>,<%=arr.get(7).getRate() %>];
          data.addRow(dataRow);
          
            var chart = new google.visualization.ChartWrapper({
              chartType   : 'LineChart',
              containerId : 'lineChartArea', //라인 차트 생성할 영역
              options     : {
                              isStacked   : 'percent',
                              focusTarget : 'category',
                              height          : 500,
                              width              : '100%',
                              legend          : { position: "top", textStyle: {fontSize: 13}},
                              pointSize        : 5,
                              tooltip          : {textStyle : {fontSize:12}, showColorCode : true,trigger: 'both'},
                              hAxis              : {format: '학기: ', gridlines:{count:chartLineCount,units: {
                                                       hours : {format: ['학기: ']}}
                                                                },textStyle: {fontSize:12}},
                vAxis              : {max:5,gridlines:{count:-1},textStyle:{fontSize:12}},
                animation        : {startup: true,duration: 1000,easing: 'in' },
                annotations    : {pattern: chartDateformat,
                                textStyle: {
                                fontSize: 15,
                                bold: true,
                                italic: true,
                                color: '#871b47',
                                auraColor: '#d799ae',
                                opacity: 0.8,
                                pattern: chartDateformat
                              }
                            }
              }
            });
 
            var control = new google.visualization.ControlWrapper({
              controlType: 'ChartRangeFilter',
              containerId: 'controlsArea',  //control bar를 생성할 영역
              options: {
                  ui:{
                        chartType: 'LineChart',
                        chartOptions: {
                        chartArea: {'width': '60%','height' : 80},
                          hAxis: {'baselineColor': 'none', format: chartDateformat, textStyle: {fontSize:12},
                            gridlines:{count:controlLineCount,units: {
                               hours : {format: ['']}}
                            }}
                        }
                  },
                    filterColumnIndex: 0
                }
            });
 
            var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat});
            date_formatter.format(data, 0);
 
            var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
            window.addEventListener('resize', function() { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
            dashboard.bind([control], [chart]);
            dashboard.draw(data);
 
        }
          google.charts.setOnLoadCallback(drawDashboard);
 
      }
    }
 
$(document).ready(function(){
  google.charts.load('current', {'packages':['line','controls']});
  chartDrowFun.chartDrow(); //chartDrow() 실행
});
  </script>
</html>



</body>
</html>