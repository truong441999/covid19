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
    <title>Sở Y tế Đà Nẵng</title>
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

  
    <div class="row">
        <div class="col-6">
          <div class="tinnoibat">
            <div class="tinnoibat1">
            <h1><i class="far fa-newspaper"></i> Mẹo chống Covid</h1></div>
        </div>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img class="d-block w-100" src="images/unnamed.jpg" alt="First slide">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="images/images5398962_bai_tranh_co_dong_ve_covid_19.jpg" alt="Second slide">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="images/images.jpg" alt="Third slide">
                  </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
             
        </div>
    <div class="col-6">
          <div class="tinnoibat">
            <div class="tinnoibat1">
            <h1><i class="far fa-newspaper"></i>Tình hình Covid</h1></div>
        </div>
        <div class="pt-2">
          <div class="form-row">
            <div class="col-lg-2 col-md-2 col-12 mb-1 font-weight-bold"><span class="box-vn">Việt Nam</span></div>
          
            <div class="col-lg-2 col-md-2 col-6 font-weight-bold text-center text-uppercase text-danger-new mb-1">
              Số ca nhiễm<br> <span class="font24 font-weight-bold">1.054</span>
            </div>
            <div class="col-lg-2 col-md-2 col-6 font-weight-bold text-center text-uppercase text-warning1 mb-1">
              Đang điều trị<br> <span class="font24 font-weight-bold">148</span>
            </div>
            <div class="col-lg-2 col-md-2 font-weight-bold col-6 text-center text-uppercase text-success mb-1">
              Khỏi<br> <span class="font24 font-weight-bold">868</span>
            </div>
            <div class="col-lg-2 col-md-2 font-weight-bold col-6 text-center text-uppercase text-danger-new1 mb-1">
              Tử vong<br> <span class="font24 font-weight-bold">35</span>
            </div>
            
          </div>
          <hr class="hidden-xs mt-0">
          <div class="row">
            <div class="col-lg-2 col-md-2 font-weight-bold col-12 mb-1"><span class="box-tg">Thế giới</span></div>
          
            <div class="col-lg-2 font-weight-bold col-md-2 col-6 text-center text-uppercase text-danger-new mb-1">
              Tổng ca nhiễm<br> <span class="font24 font-weight-bold">27.753.243</span>
            </div>
            <div class="col-lg-2 col-md-2 col-6 font-weight-bold text-center text-uppercase text-warning1 mb-1">
              Đang nhiễm<br> <span class="font24 font-weight-bold">7.009.939</span>
            </div>
            <div class="col-lg-2 col-md-2 font-weight-bold col-6 text-center text-uppercase text-success mb-1">
              Khỏi<br> <span class="font24 font-weight-bold">19.841.196</span>
            </div>
            <div class="col-lg-2 col-md-2 font-weight-bold col-6 text-center text-uppercase text-danger-new1 mb-1">
              Tử vong<br> <span class="font24 font-weight-bold">902.108</span>
            </div>
            
          </div>
        </div>
      </div>

  
  </div>

<div class="tinnoibat">
<div class="tinnoibat1">
<h1><i class="far fa-newspaper"></i> Tin tức</h1></div>
 <div class="container">
        <div class="row">
            <div class="col-8">
                <h2>8 bệnh nhân được chữa khỏi COVID-19 tại Quảng Nam và Đà Nẵng </h2>
                <i>(Thứ ba, 08/09/2020 17:58)</i>
                <p>Ngày 8/9 tại Bệnh viện Phổi Đà Nẵng đã công bố chữa khỏi COVID-19 cho 4 bệnh nhân,
                     Bệnh viện Đa khoa khu vực Quảng Nam cũng đã công bố, cho xuất viện đối 
                     với 4 trường hợp.
                    <br>
                Theo đó, ngày 8/9 tại Bệnh viện Phổi Đà Nẵng công bố chữa khỏi COVID-19 cho 4 bệnh nhân 
                gồm: BN493; BN703; BN617 và BN497. Trong số 4 bệnh nhân được công bố khỏi COVID-19 
                và được xuất viện có BN497 trú tại quận Hải Châu (Đà Nẵng) từng có diễn biến nặng.
                4 bệnh nhân được công bố khỏi COVID-19 tại Bệnh viện đa khoa khu vực Quảng Nam.
                    <br>
                    <br>
                    <img src="images/1.jpg" alt="">
                    <br>
                    <br>
                Tại Bệnh viện Đa khoa khu vực Quảng Nam đã công bố chữa khỏi COVID-19 cho 4 
                trường hợp gồm: BN644; BN645; BN859 và BN934. Bệnh nhân 645 là mẹ
                 của bệnh nhân 644, bệnh nhân 859 là mẹ của bệnh nhân 841 (đã công bố khỏi bệnh ngày 7/9).
                    <br>
                Tất cả 8 bệnh nhân đều trải qua nhiều lần xét nghiệm cho kết quả âm tính 
                với virus SARS-CoV-2. Sau khi xuất viện, các bệnh nhân được trở về nhà 
                và thực hiện cách ly 14 ngày tại chỗ theo quy định.
            </p>
            <b>Lê Bảo</b>
            <span>Nguồn:</span> <a href="http://giadinh.net.vn/y-te/8-benh-nhan-duoc-chua-khoi-covid-19-tai-quang-nam-va-da-nang-20200908171344081.html">http://giadinh.net.vn/y-te/8-benh-nhan-duoc-chua-khoi-covid-19-tai-quang-nam-va-da-nang-20200908171344081.htm</a>
             <h2>Chúng ta phải xác định chung sống an toàn với đại dịch COVID-19 </h2>
                <i>(Thứ hai, 07/09/2020 15:32)</i>
                <p>Khi thế giới chưa có vaccine phòng bệnh, Thứ trưởng Bộ Y tế Nguyễn Trường Sơn nhấn mạnh,
                     đã đến lúc chúng ta phải xác định chung sống an toàn với đại dịch COVID-19. Vì vậy,
                      Bộ Y tế kêu gọi mỗi người dân hãy hành động,
                     cùng nhau thực hiện đúng và đủ các khuyến cáo phòng, chống dịch của Bộ Y tế.
                    <br>
                    Thực hiện tốt thông điệp 5 K gồm khẩu trang, khử khuẩn, khoảng cách, không tụ tập 
                    và khai báo y tế để giữ an toàn cho bản thân và xã hội trước đại dịch COVID-19.
                    <br>
                    Theo Thứ trưởng Nguyễn Trường Sơn, thực tế hiện nay, nguy cơ dịch COVID-19 
                    vẫn tiềm ẩn và có thể bùng phát bất cứ lúc nào nếu chúng ta chủ quan, lơ là. 
                    Trong trạng thái “bình thường mới”, Bộ Y tế đã luôn khuyến cáo những thông điệp, 
                    những việc cần làm rất cụ thể, chính xác, phù hợp với diễn biến và tình huống phòng,
                     chống dịch COVID-19; tăng cường phối hợp chặt chẽ cùng các ban, ngành, đoàn thể ban hành những quy định cụ thể về an toàn trước dịch COVID-19.Thứ trưởng cũng chia sẻ, mỗi người dân hãy là một chiến sĩ trên mặt trận phòng, chống dịch bệnh, hãy tiếp tục lan tỏa và thực hiện tốt "Thông điệp 5K" gồm: Khẩu trang, khử khuẩn, khoảng cách, 
                    không tụ tập và khai báo y tế để giữ an toàn cho bản thân và xã hội trước đại dịch COVID-19.
                    <br>
                    Trong thời gian tới, Bộ Y tế sẽ tiếp tục xây dựng các tài liệu, các
                     khuyến cáo phòng, chống dịch COVID-19; xây dựng các chương trình truyền thông
                      "Thông điệp 5K". Đặc biệt, sẽ phối hợp ra mắt MV ca nhạc với sự góp mặt của hơn 100 người là các nghệ sĩ,
                     ca sĩ, diễn viên … nhằm lan tỏa thông điệp tới cộng đồng.
                    <br>
                    <br>
                    <img src="images/songchungvoidich.jpg" alt="">
                    <br>
                    <br>
                    Theo Ban Chỉ đạo quốc gia phòng chống dịch COVID-19, tính đến 6h sáng 7/9
                     là tròn 48 giờ cả nước không ghi nhận ca mắc mới COVID-19. Cả nước có 1.049 
                     bệnh nhân mắc bệnh, trong đó có tổng cộng 691 ca mắc COVID-19 do lây nhiễm trong nước, 
                     số lượng ca mắc mới tính từ 
                    ngày 25/7 đến nay là 551 ca; đã có 815 bệnh nhân được chữa khỏi bệnh.
                    <br>
                    Động thái này nhằm bảo đảm đáp ứng nhu cầu đi, đến TP Đà Nẵng của người dân, 
                    phù hợp với tình hình thực tế hiện nay, đồng thời để tháo gỡ khó khăn, sớm khôi 
                    phục hoạt động sản xuất, kinh doanh của các doanh nghiệp vận tải và vẫn bảo đảm h
                    ạn chế nguy cơ lây nhiễm COVID-19 cho người điều khiển, tiếp viên, nhân viên phục vụ, hành khách 
                    khi tham gia giao thông trên phương tiện vận tải hành khách đi, đến Đà Nẵng.
            </p>
            <b>Lê Bảo</b>
            <span>Nguồn:</span> <a href="http://baochinhphu.vn/Suc-khoe/Chung-ta-phai-xac-dinh-chung-song-an-toan-voi-dai-dich-COVID19/406994.vgp">http://baochinhphu.vn/Suc-khoe/Chung-ta-phai-xac-dinh-chung-song-an-toan-voi-dai-dich-COVID19/406994.vgp</a>
            </div>
            
            <div class="col-3">
                <div class="row">
                    <div class="tinnoibat">
                        <div class="tinnoibat1">
                            <h1>
                                <i class="far fa-newspaper"></i> Tin nổi bật
                            </h1>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="anhtintuc">
                        <img src="images/phat_t_ri_tuyen_truyn_v_dch_Covid-19_ti_ngi_dan_khi_i_kham_bnh.jpg"  alt="">
                        </div>
                        <b><a href=""> Bộ Y tế khuyến cáo "5K" chung sống an toàn với dịch bệnh </a></b>
                    </div>
                    
                    <div class="col-12 tintuc ">
                        <div class="row mt-2">
                            <div class="col-4 ">
                                <div class="anhtintuc1">
                                    <img src="images/1.jpg"  alt="">
                                </div>
                                
                            </div>
                            <div class="col-8 "><a href=""> 8 bệnh nhân được chữa khỏi COVID-19 tại Quảng Nam và Đà Nẵng </a></div>
                        </div>
                    </div>
                       <div class="col-12 tintuc ">
                        <div class="row mt-2">
                            <div class="col-4 ">
                                <div class="anhtintuc1">
                                    <img src="images/1.jpg"  alt="">
                                </div>
                                
                            </div>
                            <div class="col-8 "><a href=""> 8 bệnh nhân được chữa khỏi COVID-19 tại Quảng Nam và Đà Nẵng </a></div>
                        </div>
                    </div>
                    <div class="col-12 tintuc ">
                        <div class="row mt-2">
                            <div class="col-4 ">
                                <div class="anhtintuc1">
                                    <img src="images/songchungvoidich.jpg"  alt="">
                                </div>
                                
                            </div>
                            <div class="col-8 "><a href="">Chúng ta phải xác định chung sống an toàn với đại dịch COVID-19 </a></div>
                        </div>
                    </div>
                       <div class="col-12 tintuc ">
                        <div class="row mt-2">
                            <div class="col-4 ">
                                <div class="anhtintuc1">
                                    <img src="images/1.jpg"  alt="">
                                </div>
                                
                            </div>
                            <div class="col-8 "><a href=""> 8 bệnh nhân được chữa khỏi COVID-19 tại Quảng Nam và Đà Nẵng </a></div>
                        </div>
                    </div>
                       <div class="col-12 tintuc ">
                        <div class="row mt-2">
                            <div class="col-4 ">
                                <div class="anhtintuc1">
                                    <img src="images/1.jpg"  alt="">
                                </div>
                                
                            </div>
                            <div class="col-8 "><a href=""> 8 bệnh nhân được chữa khỏi COVID-19 tại Quảng Nam và Đà Nẵng </a></div>
                        </div>
                    </div>
                     <div class="col-12 tintuc ">
                        <div class="row mt-2">
                            <div class="col-4 ">
                                <div class="anhtintuc1">
                                    <img src="images/songchungvoidich.jpg"  alt="">
                                </div>
                                
                            </div>
                            <div class="col-8 "><a href="">Chúng ta phải xác định chung sống an toàn với đại dịch COVID-19 </a></div>
                        </div>
                    </div>
                     <div class="col-12 tintuc ">
                        <div class="row mt-2">
                            <div class="col-4 ">
                                <div class="anhtintuc1">
                                    <img src="images/songchungvoidich.jpg"  alt="">
                                </div>
                                
                            </div>
                            <div class="col-8 "><a href="">Chúng ta phải xác định chung sống an toàn với đại dịch COVID-19 </a></div>
                        </div>
                    </div>
                     <div class="col-12 tintuc ">
                        <div class="row mt-2">
                            <div class="col-4 ">
                                <div class="anhtintuc1">
                                    <img src="images/songchungvoidich.jpg"  alt="">
                                </div>
                                
                            </div>
                            <div class="col-8 "><a href="">Chúng ta phải xác định chung sống an toàn với đại dịch COVID-19 </a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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