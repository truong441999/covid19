<%@page import="model.userSucKhoeDao"%>
<%@page import="model.userSucKhoe"%>
<%@page import="model.user"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sức khỏe</title>
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
        <h1><i class="fas fa-heartbeat"></i> Sức khỏe</h1></div>
    </div>
    <div class="container addlist">
      <h5 class="text-center">Chon thông tin sức khỏe hiện tại của bạn</h5>
      
      <form action="/FinalProject/addSucKhoeServlet" method="POST">
     		 <label>Số điện thoại <span class="text-danger">(*)</span></label>
       <input type="tel" name="Phone" readonly value="<%out.print(adm.getUserPhone());%>"  class="form-control   ml-sm-2  sss"><br>
        
       
        <label>Các triệu chứng cơ thể <span class="text-danger">(*)</span></label>
        <div class="khaibaosk">
        <div class="row">
          <div class="col-4 chonsk">
            <label class="lbsk">Sốt:</label> <input type="checkbox" name="sot" value="1">
          </div>
          <div class="col-3 chonsk">
            <label class="lbsk">Ho:</label> <input type="checkbox" name="ho" value="1">
          </div>
          <div class="col-5 chonsk">
            <label class="lbsk">Đau người/mệt mỏi</label> <input type="checkbox" name="daunguoi" value="1">
          </div>
        </div>
        <div class="row">
          <div class="col-4 chonsk">
          
            <label class="lbsk">Khó Thở:</label> <input type="checkbox" name="khotho" value="1">
          </div>
          <div class="col-3 chonsk">
            <label class="lbsk">Tiêu chảy:</label> <input type="checkbox" name="tieuchay" value="1">
          </div>
          <div class="col-5 chonsk">
            <label class="lbsk">Sức khỏe bình thường:</label> <input type="checkbox" name="skbt" value="1">
          </div>
        </div>
      </div>
        <div class="row ">
          <div class="col-12 submitSucKhoe"><button type="submit" class="btn btn-primary aa">Gửi thông tin</button></div>
        </div>
  
      </form>
    </div>
    <div class="historyTitle">
      <h5 class="font-weight-bold"> <i class="fas fa-history"></i> Lịch sử theo dõi sức khỏe</h5>
    
    </div>
   <div class="ovr">
 
  <% 
      String phone =  adm.getUserPhone();
      ArrayList<userSucKhoe> userSucKhoes = userSucKhoeDao.listAllSucKhoe(phone);
      for(userSucKhoe s: userSucKhoes){
      	if(s.getKhoTho()==1 || s.getDauNguoi()==1){
      %>
      
       <div class="history">
      <div class="historyEvr">
        <label for=""><i class="fas fa-clock"></i> <%out.write(s.getUserNgayTheoDoi()); %></label>
        <div class="bg-danger stt">
          <p class="text-white">Nguy hiểm</p>
        </div>
        <p><span class="font-weight-bold">Thông tin sức khỏe:</span> Mắc bệnh, cần được theo dõi</p>
      </div>
    </div>
      		
     <%}
     %>
     <%if((s.getHo()==1 || s.getSot()==1 || s.getTieuChay()==1) && (s.getKhoTho()==0 && s.getDauNguoi()==0)) {%>
       <div class="history">
      <div class="historyEvr">
        <label for=""><i class="fas fa-clock"></i><%out.write(s.getUserNgayTheoDoi()); %></label>
        <div class="bg-warning stt">
          <p class="text-white">Chú ý</p>
        </div>
        <p><span class="font-weight-bold">Thông tin sức khỏe:</span> Có vấn đề</p>
      </div>
   
    </div>
     
     <%} %>
         <%if(s.getSucKhoebt()==1 &&(s.getDauNguoi()==0)&&(s.getHo()==0)&&(s.getKhoTho()==0)&&(s.getSot()==0)&&(s.getTieuChay()==0)) {%>
          <div class="history">
      <div class="historyEvr">
        <label for=""><i class="fas fa-clock"></i> <%out.write(s.getUserNgayTheoDoi()); %></label>
        <div class="bg-success stt">
          <p class="text-white">An toàn</p>
        </div>
        <p><span class="font-weight-bold">Thông tin sức khỏe:</span> Bình thường</p>
      </div>
   
    </div>
  
     
     <%} %>
     
     
      <%} %>
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