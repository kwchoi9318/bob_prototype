<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<body style="background-color:white; color:black;" topmargin="center">
<form action="socar/member/login.jsp" method="post">
<div class="box">

    
     <h1 style=" color:black;"> ※  S  O  C  A  R  회  원  가  입 ※ </h1>
     <h2>약관동의및간편가입  》  회원정보 입력 》 회원가입완료 </h2>
     
	<span >이름</span><input type="text" name ="name"/><br />
	 <span >ID</span> <input type="text" name ="id"/><br />
	 <span >비밀번호</span><input type="text" name ="pw"/><br />
	  <span >email</span><input type="text" name ="email"/><br />
	 <span >생년월일/성별</span><input type="text" name ="ssn"/> <input type="radio" name="gender" value="남"checked> 남
	 <input type="radio" name="gender" value="female"> 여<br>
	
	 <h2>면 허 정 보</h2>
	 <span >면허종류</span><input type="text" name ="lcs"/><br />
	 <span>면허번호</span><select>
  <option value="seoul">서울</option>
  <option value="kyungki">경기</option>
  <option value="daejun">대전</option>
  <option value="busan">부산</option>
</select><input type="text" name ="lcs"/><br />
	 <span>갱신기간 만료일</span><select>
  <option value="2024">2024</option>
  <option value="2023">2023</option>
  <option value="2022">2022</option>
  <option value="2021">2021</option>
</select><select>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
   <option value="5">5</option>
    <option value="6">6</option>
     <option value="7">7</option>
      <option value="8">8</option>
       <option value="9">9</option>
        <option value="10">10</option>
         <option value="11">11</option>
          <option value="12">12</option>
</select><select>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
   <option value="5">5</option>
    <option value="6">6</option>
     <option value="7">7</option>
      <option value="8">8</option>
       <option value="9">9</option>
        <option value="10">10</option>
         <option value="11">11</option>
          <option value="12">12</option>
           <option value="13">13</option>
            <option value="14">14</option>
             <option value="15">15</option>
              <option value="16">16</option>
               <option value="17">17</option>
                <option value="18">18</option>
                 <option value="19">19</option>
                  <option value="20">20</option>
                   <option value="21">21</option>
                    <option value="22">22</option>
                     <option value="23">23</option>
                      <option value="24">24</option>
                       <option value="25">25</option>
                        <option value="26">26</option>
                         <option value="27">27</option>
                          <option value="28">28</option>
                           <option value="29">29</option>
                            <option value="30">30</option>
                             <option value="31">31</option>
                            
</select>
	 <span>면허 발급일</span><select>
    <option value="2016">2016</option>
  <option value="2015">2015</option>
  <option value="2014">2014</option>
  <option value="2013">2013</option>
  <option value="2012">2012</option>
   <option value="2011">2011</option>
  <option value="2010">2010</option>
  <option value="2009">2009</option>
  <option value="2008">2008</option>
   <option value="2007">2007</option>
  <option value="2006">2006</option>
  <option value="2005">2005</option>
  <option value="2004">2004</option>
</select><select>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
   <option value="5">5</option>
    <option value="6">6</option>
     <option value="7">7</option>
      <option value="8">8</option>
       <option value="9">9</option>
        <option value="10">10</option>
         <option value="11">11</option>
          <option value="12">12</option>
</select><select>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
   <option value="5">5</option>
    <option value="6">6</option>
     <option value="7">7</option>
      <option value="8">8</option>
       <option value="9">9</option>
        <option value="10">10</option>
         <option value="11">11</option>
          <option value="12">12</option>
           <option value="13">13</option>
            <option value="14">14</option>
             <option value="15">15</option>
              <option value="16">16</option>
               <option value="17">17</option>
                <option value="18">18</option>
                 <option value="19">19</option>
                  <option value="20">20</option>
                   <option value="21">21</option>
                    <option value="22">22</option>
                     <option value="23">23</option>
                      <option value="24">24</option>
                       <option value="25">25</option>
                        <option value="26">26</option>
                         <option value="27">27</option>
                          <option value="28">28</option>
                           <option value="29">29</option>
                            <option value="30">30</option>
                             <option value="31">31</option>
                            
</select><br />
	
	<br /><input type="submit" value="회원가입" />
	<input type="reset" value="취소" />
	
	</div>
	</form>

</body>


