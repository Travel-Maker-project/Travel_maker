<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>TravelMaker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="${cpath}/css/main_css/recommend_travel_view.css" type="text/css">
    <link rel="stylesheet" href="${cpath }/css/main_css/lodge.css" type="text/css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
 <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

</head>
<style>
	body > #header-top {
			top: 0;
            border: 1px solid #dedede;
	        height: 85px;
	        width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 3px 16px -5px #99C;
            position: fixed;
    		background-color: white;
    		z-index: 9999;
           
        }
        body > #header-top > #left{
            width: 140px;
            height: 140px;
			margin-left: 50px;
            
        }
        body > #header-top > #left > a > img {
            width:100%;
            height:100%;
        }
        body > #header-top > #center {
            display: flex;
            width: 80%;
        }
        body > #header-top > #center {
            width: 800px;
        }
        body > #header-top > #center > ul {
            width: 100%;
            margin: auto;
            display: flex;
            padding-left: 0;
            justify-content: space-evenly;
        }
        body > #header-top > #center > ul > li {
            list-style: none;
            font-size: x-large;
            font-weight: bold;
        }
        body > #header-top > #right {
            height: 35px;
            width: 35px;
            margin-right: 50px;
        }
        body > #header-top > #right > a > img {
            width:85%;
            height:85%;
        }
        a {
        	text-decoration: none;
        	color: inherit;
        }
        
        </style>
<body>

        
        <div id="header-top">
        <div id="left">
            <a href="${cpath}">
                <img src="${cpath}/img/TravelMakerlogo.png">
            </a>
        </div>
        <div id="center">
            <ul>
                <li><a href="${cpath}" class="navBtn">홈</a></li>
                <li><a href="${cpath}/lodge/lodge_main" class="navBtn">숙소</a></li>
                <li><a href="${cpath}/recommend_travel/recommend_travel_main" class="navBtn">만남</a></li>
                <li><a href="${cpath}/recommend_travel/recommend_travel_main" class="navBtn">여행지추천</a></li>
            </ul>
        </div>
        <div id="right">
            <a>
                <img src="https://korean.visitkorea.or.kr/resources/images/common/icon_header_profile1.png">
            </a>
        </div>
        
    </div>
