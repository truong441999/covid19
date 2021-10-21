<%@page import="model.userDao"%>
<%@page import="model.user"%>
<%@page import="model.nguoiThan"%>
<%@page import="model.nguoiThanDao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm người thân</title>
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
        <h1><i class="far fa-newspaper"></i>Người thân</h1></div>
        <div class="container mt-3">
          <h2>Danh sách thành viên trong gia đình</h2>

          <p>Tìm kiếm theo Tên, Giới tính, Quận/Huyện , Số điện thoại , Quan hệ ... </p>  
          <input class="form-control" id="myInput" type="text" placeholder="Tìm kiếm">
          <br>
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>Họ và tên</th>
                <th>Giới Tính</th>
                <th>Quận/Huyện</th>
                <th>Phường/Xã</th>
                <th>Số điện thoai</th>
                <th>Quan hệ</th>
                <th></th>
              </tr>
            </thead>
             <tbody id="myTable">
            <%
            String phone =  adm.getUserPhone();
            ArrayList<nguoiThan> nguoiThans = nguoiThanDao.listAllNguoiThan(phone);
          
             for(nguoiThan s: nguoiThans){
             
            %>
           
              <tr>
                <td><%out.write(s.getnTName()); %></td>
                <td><%out.write(s.getnTGioiTinh()); %></td>
                <td><%out.write(s.getnTHuyen()); %></td>
                <td><%out.write(s.getnTXa()); %></td>
                <td><%out.write(s.getnTPhone()); %></td>
                <td><%out.write(s.getnTQuanHe()); %></td>
					<% out.write("<td> <a class='btn btn-danger' href=deleteNguoiThanServlet?ID="+s.getId()+">"+"  <input class='btn btn-danger' type=submit value=Xóa />"+ "</td>"); %>
                </tr>
        		<% } %>
            </tbody>
          </table>
          <form action="/FinalProject/addNguoiThanServlet" method="POST" class="my-2 my-lg-0">
            
             <h1 class="text-danger">Thêm thành viên trong gia đình </h1>
             <label>Số điện thoại bạn <span class="text-danger">(*)</span></label>
       <input type="tel" name="Phone" readonly value="<%out.print(adm.getUserPhone());%>"  class="form-control   ml-sm-2  sss"><br>
           <label>Số điện thoại người thân<span class="text-danger">(*)</span></label>
             <input type="tel" name="PhoneNT" placeholder="Số điện thoại"  class="form-control   ml-sm-2  sss"><br>

               <label>Họ và tên <span class="text-danger">(*)</span></label>
               <input type="text" name="name" placeholder="Họ Tên"  class="form-control  ml-sm-2  sss"><br>
               <label for="inputAddress" >Ngày Sinh <span class="text-danger">(*)</span></label>
               <input type="date" name="ngaysinh"  class="form-control  ml-sm-2  sss"><br>
             
      
               <label for="inputAddress2" class="">Giới tính <span class="text-danger">(*)</span></label>
               
                <label class="btn btn-gender btn-default active ">
                    <input type="radio" id="gender" name="gender" value="Nam" checked> Nam
                </label>
                <label class="btn btn-gender btn-default ">
                    <input type="radio" id="gender" name="gender" value="Nữ"> Nữ
                </label>
                <label class="btn btn-gender btn-default ">
                  <input type="radio" id="gender" name="gender" value="Khác"> Khác
              </label><br>
              <label>Quận/Huyện<span class="text-danger">(*)</span></label>
              <select class="form-control" id="huyen" name="huyen" onchange="genderChanged(this)">
                <option selected>--Chọn Quận Huyện--</option>
                <option value="Cẩm Lệ">Cẩm Lệ</option>
                <option value="Hải Châu">Hải Châu</option>
                <option value="Hòa Vang">Hòa Vang</option>
                <option value="Liên Chiểu" >Liên Chiểu</option>
                <option value="Ngũ Hành Sơn" >Ngũ Hành Sơn</option>
                <option value="Sơn Trà" >Sơn Trà</option>
                <option value="Thanh Khê" >Thanh Khê</option>
              </select>
              <label>Phường/Xã<span class="text-danger">(*)</span></label>
              <select class="form-control" id="xa" name="xa">
                <option selected>--Phường/Xã--</option>
              </select>
              <label>Địa chỉ nhà <span class="text-danger">(*)</span></label>
               <input type="text" name="diachi" placeholder="Địa chỉ nhà"  class="form-control  ml-sm-2  sss"><br>
               <label for="inputAddress2" class="">Quan hệ <span class="text-danger">(*)</span></label>
              
                <label class="btn btn-gender btn-default active ">
                    <input type="radio" id="quanhe" name="quanhe" value="Bố" checked> Bố
                </label>
                <label class="btn btn-gender btn-default ">
                    <input type="radio" id="quanhe" name="quanhe" value="Mẹ"> Mẹ
                </label>
                <label class="btn btn-gender btn-default active ">
                  <input type="radio" id="quanhe" name="quanhe" value="Con/Cháu" > Con/Cháu
              </label>
              <label class="btn btn-gender btn-default ">
                  <input type="radio" id="quanhe" name="quanhe" value="Anh/Chị/Em"> Anh/Chị/Em
              </label>
              <label class="btn btn-gender btn-default ">
                <input type="radio" id="quanhe" name="quanhe" value="Chú/Bác"> Chú/Bác
            </label>
                <label class="btn btn-gender btn-default ">
                  <input type="radio" id="quanhe" name="quanhe" value="Khác"> Khác
              </label><br>

            
          <button type="submit" class="btn btn-primary">Thêm thành viên</button>
            </form>
        
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
    
    
    
<div class="lienhe row">
  <div class="col icon1">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#example">
      <label class="text-danger" for=""></label><i class="fab fa-facebook-messenger"></i>
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