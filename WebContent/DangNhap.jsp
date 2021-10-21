<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.userDao"%>
<%@page import="model.user"%>
<%@page import="model.Count"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel = "icon" href =  
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSdBRlApwJzrmOJsoEjKn4tHNPQ3UHNI1VYzA&usqp=CAU" 
            type = "image/x-icon"> 
            <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
            <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
              <script src="js/Validation.js" type="text/javascript"></script>
              <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
              <link rel="stylesheet" href="css/style.css"> 
                  <link rel="stylesheet" href="css/all.css">
              <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
              <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
              <script src="js/Validation.js"></script>
              <script src="js/Chart.min.js"></script>
</head>
<body>
    <div class="container-fluid ban1">
        <div class="row">
            <div class="col-12" >  <img src="images/b1.png" alt=""></div>
            
        </div>
      </div>
    <div class="container thoigian">
        <label class="homnayla">Hôm nay là :</label>
    <label id="hvn"></label>
        <script>
            var today = new Date();
            var date ='Ngày ' + today.getDate()+' Tháng '+(today.getMonth()+1)+' năm '+today.getFullYear();
 
            var dateTime = ' '+date;
         
            document.getElementById("hvn").innerHTML = dateTime;
         </script>
    </div>
    <div class="container menu-banner">
    <nav class="navbar navbar-expand-lg navbar-light menus">
 
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link text-light font-weight-bold" href="#">TRANG CHỦ <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light font-weight-bold" href="#">THỐNG KÊ COVID-19</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light font-weight-bold" href="#">KHAI BÁO Y TẾ</a>
              </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
          <a href="DangNhap.jsp"> <button class="btn btn-danger mr-1" type="button">Đăng nhập</button></a> 
           <a href="DangKy.jsp"> <button class="btn btn-danger my-2 my-sm-0" type="button">Đăng kí</button></a>
        </form>
           
        </div>
        </div>
      </nav>    
    </div>
    <div class="container noidung">

<div class="dangnhap">
      <h1 class="text-danger">Đăng nhập</h1>
      <form action="/FinalProject/LoginServlet" method="POST" id="demoForm"class="my-2 my-lg-0">
        <label>Số điện thoại <span class="text-danger">(*)</span></label>
        <input type="tel" name="id" placeholder="Số điện thoại"  class="form-control   ml-sm-2  sss"><br>
        <label>Mật khẩu <span class="text-danger">(*)</span></label>
          <input type="password" placeholder="Mật khẩu"  name="password1"class="form-control  ml-sm-2  sss"><br>
          <button type="submit" class="btn btn-primary">Đăng nhập</button>
      </form>
       <%String err = request.getParameter("err");
		if ("1".equals(err)) {
			out.print("<p style=color:red>Số điện thoại hoặc mật khẩu không đúng</p>");
		}
		%>
     </div>
<div class="tinnoibat">
  <div class="tinnoibat1">
    <h1>
      <i class="far fa-newspaper"></i> Liên kết
    </h1>
  </div>
</div>
<div class="row">
    <div class="col-lg-3 col-sm-6"><a target="_blank" href="http://chinhphu.vn/portal/page/portal/chinhphu/trangchu"><img class="img-fluid img-thumbnail" src="images/chinhphu.png" alt=""></a>
    </div>
    <div class="col-lg-3 col-sm-6"><a target="_blank" href="https://moh.gov.vn" ><img class="img-fluid img-thumbnail" src="images/link1.png" alt=""></a>
    </div>
    <div class="col-lg-3 col-sm-6"><a target="_blank" href="https://suckhoedoisong.vn/" ><img class="img-fluid img-thumbnail" src="images/suckhoe.jpg" alt=""></a>
    </div>
    <div class="col-lg-3 col-sm-6"><a target="_blank" href="http://giadinh.net.vn/" ><img class="img-fluid img-thumbnail" src="images/link4.jpg" alt=""></a>
    </div>
</div>
</div>

<br>
</div>
</body>
<footer class="container-fluid ban">
<div class="text-center">
  <h4 style="color: white">TRANG TIN VỀ DỊCH BỆNH VIÊM ĐƯỜNG HÔ HẤP CẤP COVID-19</h4>
  <p style="color: white">
    Trang thông tin điện tử Sở Y tế thành phố Đà Nẵng <br> Địa chỉ:
    Tầng 23 Trung tâm Hành chính thành phố Đà Nẵng, 24 Trần Phú, phường
    Thạch Thang, quận Hải Châu, thành phố Đà Nẵng <br> Điện thoại:
    0236 3821206 Fax: 0236 3826276 E-mail: syt@danang.gov.vn

  </p>
</div>
</footer>
</html>