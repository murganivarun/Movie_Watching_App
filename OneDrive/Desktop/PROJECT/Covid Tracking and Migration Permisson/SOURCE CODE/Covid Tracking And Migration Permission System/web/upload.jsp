<%-- 
    Document   : owner
    Created on : 29 Jan, 2021, 8:39:32 AM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Covid Tracking</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.hslides.1.0.js"></script>
<script type="text/javascript">
$((function () {
    $('#accordion').hSlides({
        totalWidth: 920,
        totalHeight: 300,
        minPanelWidth: 111,
        maxPanelWidth: 476,
		easing: "easeOutBack",
		activeClass: 'current'
    });
}));
</script>
</head>
<body id="top">
<div id="header">
  <div class="wrapper">
    <div class="fl_left">
      <h1><a href="index.html">Covid Tracking</a></h1>
      <p>and Migration Permission</p>
    </div>
   
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="topbar">
  <div class="wrapper">
    <div id="topnav">
      <ul>
        <li><a href="OwnerHome.jsp">Home</a></li>
        <li class="active"><a href="upload.jsp">Upload</a></li>
        <li><a href="ViewCovidInfo.jsp">View Covid Info</a></li>
       
        <li class="last"><a href="owner.jsp">Logout</a></li>
      </ul>
    </div>
    <div id="search">
      <form action="#" method="post">
        <fieldset>
          <legend>Site Search</legend>
          <input type="text" value="Search"  onfocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;" />
          <input type="submit" name="go" id="go" value="Search" />
        </fieldset>
      </form>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="featured_slide">
  <div class="wrapper">
    <div class="featured_content">
      <ul id="accordion">
        <li class="current">
          <div class="featured_box">
            <h2>1.Abstract</h2>
            <p>
                Any user can retrieve data from the information system. Authenticated users in each  major Covid center  are given permission to insert information through the internet but not to delete. Only data administrator can delete unnecessary  information and modify the database.
              </p>
            
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
          <div class="featured_tab"> <img src="images/User.png" alt="" />
           
          </div>
        </li>
        <li>
          <div class="featured_box">
              <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
          <div class="featured_tab"><img src="images/Database.png" alt="" />
         
          </div>
        </li>
        <li>
          <div class="featured_box">
              <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
          <div class="featured_tab"><img src="images/desk.png" alt="" />
          
          </div>
        </li>
        <li>
          <div class="featured_box">
               <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
          <div class="featured_tab"><img src="images/document.png" alt="" />
        
          </div>
        </li>
        <li>
          <div class="featured_box">
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
          <div class="featured_tab"><img src="images/netscape.png" alt="" />
           
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="homecontent">
  <div class="wrapper">
      <CENTER>
          <%
           String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
          %>
      <h3>WRITE COVID INFO </h3>
      <form action="CovidAction.jsp" method="post">
          <table>
              <tr><th>NAME</th><td><input type="text" name="uname" value="<%=username%>" disabled=""></td></tr>
               <tr><th>COVID CENTER</th><TD><input type="text" name="ccenter" required=""></TD></tr>
              <tr><th>COUNTRY</th><TD><input type="text" name="country" required=""></TD></tr>
               <tr><th>TOTAL COVID CASES</th><TD><input type="text" name="ccases" required=""></TD></tr>
                <tr><th>DEATHS</th><TD><input type="text" name="deaths" required=""></TD></tr>
                 <tr><th>RECOVERED</th><TD><input type="text" name="recovered" required=""></TD></tr>
                   <tr><th>DATE</th><TD><input type="date" name="date" required=""></TD></tr>
               
                <tr><th>DESCRIPTION</th><TD><textarea cols="30" rows="8" name="description" required=""></textarea></TD></tr>
                 <tr><th>PRECAUTIONS</th><TD><textarea cols="30" rows="8" name="precautions" required=""></textarea></TD></tr>
             
              <tr><th></th><td><input type="submit" value="SUBMIT">
                  <input type="reset" value="RESET"></td></tr>
          </table>
      </form>
       
      </CENTER>
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="container">
  <div class="wrapper">
   
  
  
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="footer">
  <div class="wrapper">
   
   
    
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="copyright">
  <div class="wrapper">
    <p class="fl_left">Copyright &copy; Covid Tracking</p>
     <br class="clear" />
  </div>
</div>
</body>
</html>