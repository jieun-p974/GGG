<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="../../../resources/styles/accountRegist.css">
<title>간편결제 계좌등록</title>
</head>
<body>
<div class="container">
      <div class="account">
        <h1> 간편결제 계좌등록</h1>
      
        <button class="registBtn">등록</button>
   
        <div class="account_info">
            <div class="cashSec">
                <h3>현금영수증 정보</h3>
                <select class="cashinfo">
                    <option value="1">개인</option>
                    <option value="2">사업자</option>
                </select>
            </div>
            
            <div class="idnumSec"> 
                <h5>주민번호 / 법인등록번호</h5>
                <input type="text" name="idnum" class="idnum" placeholder="하이픈(-) 포함해서 기입해주세요.">
            </div>

            <div class="accountSec">
                <h3 class="idnumTitle">계좌정보</h3>
                <select class="bankinfo">
                    <option value="0">은행</option>
                    <option value="1">신한은행</option>
                    <option value="2">국민은행</option>
                </select> 
                <input type="text" name="accountnum" class="accountnum" placeholder="하이픈(-) 포함해서 기입해주세요.">
            </div>
            
        </div>
  
        </div>
      </div>
</body>
</html>