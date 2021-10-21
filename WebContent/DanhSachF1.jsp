<%@page import="model.userDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.admin"%>
<%@page import="model.nguoiThan"%>
<%@page import="model.nguoiThanDao"%>
<%@page import="model.user"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách F1</title>
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
              <script src="js/Validation.js" type="text/javascript"></script>
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
       
            <li class="nav-item">
              <a class="nav-link text-light font-weight-bold" href="ThongKe.jsp">THỐNG KÊ COVID-19</a>
            </li>
 <li class="nav-item">
              <a class="nav-link text-light font-weight-bold" href="QuanLyTaiKhoan.jsp">TÀI KHOẢN NGƯỜI DÙNG</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light font-weight-bold" href="ThongTinKhaiBao.jsp">THÔNG TIN KHAI BÁO</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light font-weight-bold" href="QuanLyTinNhan.jsp">TIN NHẮN CỦA NGƯỜI DÙNG</a>
            </li>
             
      
 
           
          </ul>
                  <ul class="nav pull-right">
                   <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle text-light font-weight-bold	" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-hospital-user"></i>-<% admin adm =(admin) session.getAttribute("adm"); out.print(adm.getAdName()); %>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="TrangChu.jsp">Đăng xuất</a>
           
              </div>
              </li>
                  </ul>
        </div>
        </div>
      </nav>    
    </div>
  <div class="container noidung">
        <div class="tinnoibat">
        <div class="tinnoibat1">
        <h1><i class="fas fa-heartbeat"></i> Danh sách f1</h1></div>
    </div>
    <div class="">
     <h4><a href="DanhSachNhiemBenh.jsp">Danh sách nhiễm bệnh</a></h4> 
    <p>Tìm kiếm theo Tên, Giới tính, Quận/Huyện , Tình Trạng ... </p>  
          <input class="form-control" id="myInput" type="text" placeholder="Tìm kiếm">
          <br>
      <h5 class="text-center">Thông tin F1</h5>
      <table class="table table-bordered">
            <thead>
              <tr>
                <th>Số điện thoại</th>
                <th>Họ và tên</th>
                <th>Giới Tính</th>
                <th>Quan hệ</th>
                 <th>Năm sinh</th>
                <th>Quận/Huyện</th>
                <th>Phường/Xã</th>
                <th>Địa chỉ</th>
              </tr>
            </thead>
            <tbody id="myTable">
            <% String phone = request.getParameter("ID"); 
            ArrayList<nguoiThan> nguoiThans= nguoiThanDao.listAllNguoiThan(phone);
            
            for(nguoiThan s: nguoiThans){
            	
             %>
              <tr>
                <td><%out.write(s.getnTPhone()); %></td>
                <td><%out.write(s.getnTName()); %></td>
                <td><%out.write(s.getnTGioiTinh()); %></td>
                  <td><%out.write(s.getnTQuanHe()); %></td>
                   <td><%out.write(s.getnTNgaySinh()); %></td>
   			<td><%out.write(s.getnTHuyen()); %></td>
   			<td><%out.write(s.getnTXa()); %></td>
   			<td><%out.write(s.getnTDiaChi()); %></td>
                 </tr>
             <% }%>
            </tbody>
          </table>
        
  </div>
     <script>
          $(document).ready(function(){
            $("#myInput").on("keyup", function() {
              var value = $(this).val().toLowerCase();
              $("#myTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
              });
            });
          });
          </script>
 
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