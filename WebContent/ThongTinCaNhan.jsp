<%@page import="model.userDao"%>
<%@page import="model.user"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin cá nhân</title>
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
              <a class="nav-link text-light font-weight-bold" href="SoYTeDaNang.jsp">TRANG CHỦ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light font-weight-bold" href="ThongKeCovid.jsp">THỐNG KÊ COVID-19</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light font-weight-bold" href="SucKhoe.jsp">SỨC KHỎE</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-light font-weight-bold" href="ThongTinCaNhan.jsp">THÔNG TIN CÁ NHÂN </a>
              </li>
               <li class="nav-item">
                <a class="nav-link text-light font-weight-bold" href="ThemNguoiThan.jsp">THÊM NGƯỜI THÂN</a>
              </li>
          </ul>
                  <ul class="nav pull-right">
                   <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle text-light font-weight-bold	" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-hospital-user"></i>- <% user adm =(user) session.getAttribute("adm"); out.print(adm.getUserName()); %>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="ThongTinCaNhan.jsp"> <i class="fas fa-id-card"></i> Thông tin cá nhân</a>
                <a class="dropdown-item" href="TrangChu.jsp"><i class="fas fa-sign-out-alt"></i>Đăng xuất</a>
                 
           
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
        <h1><i class="far fa-newspaper"></i>Cập nhât thông tin</h1></div>
    </div>

     <div class="card border-dark mb-3" ">
  <div class="card-header bg-transparent border-success"><h1 class="text-danger">Thông tin cá nhân</h1></div>
  <div class="card-body ">
      <% 
      String phone =  adm.getUserPhone();
     ArrayList<user> users = userDao.listuser(phone);
      for(user s: users){

      
      %>
      <table class="table table-striped">
  <tbody>
    <tr>
      <th scope="row"><h5>Họ và tên: </h5></th>
      <td><h5><% out.print(s.getUserName());  %></h5></td>   
      <td></td>
      <td></td>
    </tr>
    <tr>
      <th scope="row"><h5>Số điện thoại: </h5></th>
      <td><h5> <% out.print(s.getUserPhone());  %></h5></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <th scope="row"><h5>Số cmnd: </h5></th>
      <td><h5> <% out.print(s.getUserCMND());  %></h5></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <th scope="row"><h5>Quận/Huyện: </h5></th>
      <td><h5> <% out.print(s.getUserHuyen());  %></h5></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <th scope="row"><h5>Phường/Xã: </h5></th>
      <td><h5>  <% out.print(s.getUserXa());  %></h5></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <th scope="row"><h5>Địa chỉ: </h5></th>
      <td><h5><% out.print(s.getUserDiaChi());  %></h5></td>
      <td></td>
      <td></td>
    </tr>
       <tr>
      <th scope="row"><h5>Trạng thái sức khỏe: </h5></th>
      <td><h5> <% out.print(s.getUserTrangThai());  %></h5></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
  <%} %>
  </div>
  <div class="card-footer bg-transparent border-success">  <a href="CapNhatThongTin.jsp"><button type="submit" class="btn btn-primary">Thay Đổi thông tin cá nhân</button></a>
 
       <a href="DoiMatKhau.jsp"><button type="submit" class="btn btn-primary">Thay đổi mật khẩu</button></a>
 </div>
</div>
      
<div class="lienhe row">
  <div class="col icon1">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#example">
      <label class="text-danger" for=""></label><i class="fas fa-envelope"></i>
    </button>

</div> 
</div>
<div class="modal fade" id="example" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Trò chuyện của bác sĩ</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="/FinalProject/addTinNhanServlet" method="POST">
      <div class="modal-body">
        
     
        <label>Số điện thoại</label><input type="tel" name="usPhone" readonly value="<%out.print(adm.getUserPhone());%>"  class="form-control ml-sm-2S sss">
        <label>Tin nhắn </label>
        <textarea name="noidung" id="" cols="63" rows="5" placeholder="Nhập tin nhắn cần hỏi"></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
        <button type="submit" class="btn btn-primary">Gửi tin nhắn</button>
      </div>
      </form>
    </div>
  </div>
</div>
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