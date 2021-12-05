<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
ul {
  padding: 0;
  margin: 0;
}

li {
  list-style-type: none;
}

input[type=radio] {
  display: none;
}

label {
  cursor: pointer;
}

::-webkit-scrollbar {
  display: none;
}

body .swanky {
  margin: auto;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}

body {
  height: 100vh;
  font-weight: 500;
  font-family: "Roboto", sans-serif;
  background: linear-gradient(135deg, #8254EA 0%, #E86DEC 100%);
  -webkit-font-smoothing: antialiased;
  font-size: 12px;
}
body .swanky {
  perspective: 600px;
  width: 700px;
  position: absolute;
  margin: auto;
  height: 360px;
}
body .swanky_title {
  float: right;
  text-align: left;
  width: 400px;
  color: white;
  position: relative;
  top: -10px;
}
body .swanky_title__social a {
  position: relative;
  overflow: hidden;
  width: 140px;
  margin-right: 15px;
  text-decoration: none;
  padding: 0px 0px 0px 0px;
  height: 40px;
  border: 2px solid white;
  float: left;
  color: white;
  font-size: 12px;
  font-weight: 400;
  margin-top: 10px;
}
body .swanky_title__social a .slide {
  height: 45px;
  width: 100px;
  float: left;
  position: absolute;
  transform: skew(20deg);
  left: -120px;
  transition-property: left;
  transition-duration: 0.2s;
  background: white;
}
body .swanky_title__social a .slide .arrow {
  position: absolute;
  right: 31px;
  top: 24px;
  opacity: 0;
  transform: skew(-20deg);
}
body .swanky_title__social a .slide .arrow .stem {
  width: 10px;
  height: 2px;
  background: #858490;
}
body .swanky_title__social a .slide .arrow .point {
  width: 6px;
  height: 6px;
  border-right: 2px solid #858490;
  top: -3px;
  right: 1px;
  position: absolute;
  transform: rotate(45deg);
  border-top: 2px solid #858490;
}
body .swanky_title__social a img {
  width: 16px;
  margin-left: 10px;
  position: relative;
  margin-right: 8px;
  transition-property: margin-left;
  transition-duration: 0.1s;
  margin-top: 10px;
  top: 4px;
}
body .swanky_title__social a:hover > .slide {
  left: -70px;
  transition-property: left;
  transition-duration: 0.1s;
}
body .swanky_title__social a:hover > img {
  margin-left: 40px;
  transition-property: margin-left;
  transition-duration: 0.1s;
}
body .swanky_title__social a:hover > .slide .arrow {
  right: 11px;
  opacity: 1;
  transition-property: right, opacity;
  transition-delay: 0.07s;
  transition-duration: 0.2s;
}
body .swanky .intro {
  float: right;
  color: white;
  width: 370px;
  top: 50px;
  position: relative;
}
body .swanky .intro h1 {
  text-shadow: 0px 2px rgba(0, 0, 0, 0.26);
}
body .swanky .intro p {
  line-height: 20px;
  text-shadow: 0px 1px rgba(0, 0, 0, 0.26);
}
body .swanky_wrapper {
  width: 225px;
  height: auto;
  overflow: hidden;
  border-radius: 4px;
  background: #2a394f;
}
body .swanky_wrapper label {
  padding: 25px;
  float: left;
  height: 72px;
  border-bottom: 1px solid #293649;
  position: relative;
  width: 100%;
  color: #eff4fa;
  transition: text-indent 0.15s, height 0.3s;
  box-sizing: border-box;
}
body .swanky_wrapper label img {
  margin-right: 10px;
  position: relative;
  top: 2px;
  width: 16px;
}
body .swanky_wrapper label span {
  position: relative;
  top: -3px;
}
body .swanky_wrapper label:hover {
  background: #212e41;
  border-bottom: 1px solid #2A394F;
  text-indent: 4px;
}
body .swanky_wrapper label:hover .bar {
  width: 100%;
}
body .swanky_wrapper label .bar {
  width: 0px;
  transition: width 0.15s;
  height: 2px;
  position: absolute;
  display: block;
  background: #355789;
  bottom: 0;
  left: 0;
}
body .swanky_wrapper label .lil_arrow {
  width: 5px;
  height: 5px;
  transition: transform 0.8s;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
  border-top: 2px solid white;
  border-right: 2px solid white;
  float: right;
  position: relative;
  top: 6px;
  right: 2px;
  transform: rotate(45deg);
}
body .swanky_wrapper__content {
  position: absolute;
  display: none;
  overflow: hidden;
  left: 0;
  width: 100%;
}
body .swanky_wrapper__content li {
  width: 100%;
  opacity: 0;
  left: -100%;
  background: #15a4fa;
  padding: 25px 0px;
  text-indent: 25px;
  box-shadow: 0px 0px #126CA1 inset;
  transition: box-shadow 0.3s, text-indent 0.3s;
  position: relative;
}
body .swanky_wrapper__content li:hover {
  background: #0c93e4;
  box-shadow: 3px 0px #126CA1 inset;
  transition: box-shadow 0.3s linear, text-indent 0.3s linear;
  text-indent: 31px;
}
body .swanky_wrapper__content .clear {
  clear: both;
}

input[type=radio]:checked + label .swanky_wrapper__content {
  display: block;
  top: 68px;
  border-bottom: 1px solid #212e41;
}

input[type=radio]:checked + label > .lil_arrow {
  transition: transform 0.8s;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
  transform: rotate(135deg);
  border-top: 2px solid #14a3f9;
  border-right: 2px solid #14a3f9;
}

input[type=radio]:checked + label {
  height: 325px;
  background: #212e41;
  text-indent: 4px;
  transition-property: height;
  transition-duration: 0.6s;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

input[type=radio]:checked + label .bar {
  width: 0;
}

input[type=radio]:checked + label li:nth-of-type(1) {
  -webkit-animation: in 0.15s 0.575s forwards;
          animation: in 0.15s 0.575s forwards;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
  -moz-animation: in 0.15s 0.575s forwards;
  -moz-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
}
input[type=radio]:checked + label li:nth-of-type(2) {
  -webkit-animation: in 0.15s 0.7s forwards;
          animation: in 0.15s 0.7s forwards;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
  -moz-animation: in 0.15s 0.7s forwards;
  -moz-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
}
input[type=radio]:checked + label li:nth-of-type(3) {
  -webkit-animation: in 0.15s 0.825s forwards;
          animation: in 0.15s 0.825s forwards;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
  -moz-animation: in 0.15s 0.825s forwards;
  -moz-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
}
input[type=radio]:checked + label li:nth-of-type(4) {
  -webkit-animation: in 0.15s 0.95s forwards;
          animation: in 0.15s 0.95s forwards;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
  -moz-animation: in 0.15s 0.95s forwards;
  -moz-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

@-webkit-keyframes in {
  from {
    left: -100%;
    opacity: 0;
  }
  to {
    left: 0;
    opacity: 1;
  }
}

@keyframes in {
  from {
    left: -100%;
    opacity: 0;
  }
  to {
    left: 0;
    opacity: 1;
  }
}
.love {
  position: absolute;
  right: 20px;
  bottom: 0px;
  font-size: 11px;
  font-weight: normal;
}
.love p {
  color: white;
  font-weight: normal;
  font-family: "Open Sans", sans-serif;
}
.love a {
  color: white;
  font-weight: 700;
  text-decoration: none;
}
.love img {
  position: relative;
  top: 3px;
  margin: 0px 4px;
  width: 10px;
}

.brand {
  position: absolute;
  left: 20px;
  bottom: 14px;
}
.brand img {
  width: 30px;
}
a{
 /* background: #15a4fa; */
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
   text-Decoration: none;
  
}
a:hover {
  text-Decoration: none;
 /*  background: #15a4fa; */
  font-family: "Lucida Console", "Courier New", monospace;
}

a:active {
  background-color: hotpink;
} 

</style>

</head>
<body>
<%
  response.setHeader("cache control", "no cache, no store, must revalidate ");
  response.setHeader("program", "no cache ");
  response.setHeader("Expires", "0");
  
  if(session.getAttribute("uname")==null){
	  response.sendRedirect("Login.jsp");
  }
 %>
<!-- / My brand -->
<div class='brand'>
  <!-- <a href='https://www.jamiecoulter.co.uk' target='_blank'>
    <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/logo.png'>
  </a> -->
</div>
<!-- / Begin Body -->
<div class='swanky'>
  <!-- / Introduction Block -->
  <div class='swanky_title'>
    <h1>RESTRAUNT MANAGEMENT SYSTEM</h1>
    <p>Welcome  Dear ${uname},To lead people, walk behind them.</p>
 <img src="images/Coffee.png" alt="Girl in a jacket" style="width:400px;height:300px;">
 
  </div>
 
  <!-- /////////// Begin Dropdown //////////// -->
  <div class='swanky_wrapper'>
    <input id='Dashboard' name='radio' type='radio'>
    <label for='Dashboard'>
    <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/users.png'>
      
      <span>Register</span>
      <div class='lil_arrow'></div>
      <div class='bar'></div>
      <div class='swanky_wrapper__content'>
        <ul>
          <li><a href="Clients.jsp">Register Client</a></li>
          <li><a href="Chiefs.jsp">Register Employee</a></li>
          <li><a href="Suppliers.jsp">Register Supplier</a></li>

        </ul>
      </div>
    </label>
    <input id='Sales' name='radio' type='radio'>
    <label for='Sales'>
      <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/dash.png'>
      <span>List</span>
      <div class='lil_arrow'></div>
      <div class='bar'></div>
      <div class='swanky_wrapper__content'>
        <ul>
          <li><a href="ClientList.jsp">List of clients</a></li>
          <li><a href="ChiefList.jsp">List of Employee</a></li>
          <li><a href="SupllierList.jsp">List of Suppliers</a></li>
        </ul>
      </div>
    </label>
    <input id='Users' name='radio' type='radio'>
    <label for='Users'>
      <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/del.png'>
      <span>Stock</span>
      <div class='lil_arrow'></div>
      <div class='bar'></div>
      <div class='swanky_wrapper__content'>
        <ul>
          <li><a href="#">Supplied</a></li>
        </ul>
      </div>
    </label>
    <input id='Settings' radio='radio' type='radio'>
    <label for='Settings'>
      <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/set.png'>
      <span>Update</span>
      <div class='lil_arrow'></div>
      <div class='swanky_wrapper__content'>
        <ul>
          <li><a href="Rules.jsp">Rules and Regulation</a></li>
          </li>
        </ul>
      </div>
    </label>
    <label for='Settings'>
      <i class="glyphicon glyphicon-remove"></i>
      <span><form action ="Logout" method="post">
 <input type ="submit" value ="Logout">
 </form></span>
 </form></li>
        </ul>
      </div>
    </label>
  </div>
  <!-- /////////// End Dropdown //////////// -->
</div>
<!-- / My Footer -->
<div class='love'>
  <p>Copy Right &copy; RURA</a></p>
</div>
</body>
</html>