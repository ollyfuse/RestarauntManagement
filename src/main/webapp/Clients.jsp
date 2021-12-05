<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <link rel="stylesheet" href="style.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     
     <style type="text/css">
     
     @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}  
     </style>
      </head>
<body>
  <div class="container">
    <div class="title">Register Client</div>
    <div class="content">
      <form action="Register" method="post" enctype="multipart/form-data">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="c_name" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details">Schools</span>
            <input type="text" name="schools" placeholder="Enter your school" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" name="gender" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phone" placeholder="Enter your number" required>
          </div>
          <div class="input-box">
            <span class="details">Birth Year</span>
            <input type="text" name="age" placeholder="Enter year of birth" required>
          </div>
          <div class="input-box">
            <span class="details">Payment</span>
            <input type="text" name="payment" placeholder="Confirm your payment" required>
          </div>
          <div class="">
            <span class="details">Select image</span>
            <input type="file" name="image"> 
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="m_option" value="Male" id="dot-1">
          <input type="radio" name="m_option" value="Female"id="dot-2">
          <input type="radio" name="m_option" value="prefer Not "id="dot-3">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span> 
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span> 
          </label>
          <label for="dot-3">
            <span class="dot three"></span> 
            <span class="gender">Prefer not to say</span> 
            </label>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Register">
        </div>
        <div><span class="details" style="color:green" >  ${errorMessage}</span></div>
      </form>
    </div>
  </div>

</body>
</html>
<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>




table {
  width: 100%;
}
td {
  text-align: center;
  padding: 15px;
}

</style>
</head>
<body>
<h2>Clients Form</h2>
<form action="Register" method="post">
<table>
<tr><td>Client Name </td><td><input type="text" name="c_name"></td></tr>
<tr><td>Gender </td><td><input type="text" name="gender"></td></tr>
<tr><td>Schools </td><td><input type="text" name="schools"></td></tr>
<tr><td>Age </td><td><input type="text" name="age"></td></tr>
<tr><td>Option:</td><td>Lunch<input type="checkbox" name="m_option" value="Lunch"> Dinner <input type="checkbox" name="m_option" value="Dinner"></td></tr>
<tr><td>Payment </td><td><input type="text" name="payment"></td></tr>
<tr><td></td><td><button type="submit" value="Register">Register client</button></td></tr>

<!-- <tr><td><br><br><br><input type="button" onclick="location.href='Index.jsp';" value="back home" /></td><td></td></tr> -->

</table>
</body>
</html> --%>