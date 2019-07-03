<%-- 
    Document   : xuatmautrongbenhvien
    Created on : Jun 19, 2019, 4:14:44 PM
    Author     : TranTham
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Xuất máu trong bệnh viện 1</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="This is website management hospital">
    <meta name="author" content="Team real intership in VNPT-IT">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="resources/css/style_xuatmautrongbenhvien.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">

    <script src="jquery.js"></script>
    <script src="xuatmautrongbenhvien.js"></script>
    <script src="/socket.io/socket.io.js"></script>
    <!--button-->
    <script type="text/javascript">
        function getInfo() {
            var sotiepnhan = document.getElementById("Sotiepnhan").value;
            var ngay1 = document.getElementById("Ngay1").value;
            var matuimau = document.getElementById("Matuimau").value;
            var hansudung = document.getElementById("Hansudung").value;
            var ngaylaymau = document.getElementById("Ngaylaymau").value;
            var nhomabo = document.getElementById("NhomABO").value;
            var nhomrhd = document.getElementById("NhomRhD").value;
            var soluong = document.getElementById("Soluong").value;
            var dongiamua = document.getElementById("Dongiamua").value;
            var loaisanpham = document.getElementById("Loaisanpham").value;
            var donvigiao = document.getElementById("Donvigiao").value;
            var donvinhan = document.getElementById("Donvinhan").value;
            var nguoinhan = document.getElementById("Nguoinhan").value;
            var dathang = document.getElementById("Dathang").value;
            var trangthai = document.getElementById("Trangthai").value;
            var nguonmau = document.getElementById("Nguonmau").value;
            var kyhieumauhoadon = document.getElementById("Kyhieumauhoadon").value;
            var thanhtienvat = document.getElementById("Thanhtienvat").value;
            var soseri = document.getElementById("Soseri").value;
            var ngay2 = document.getElementById("Ngay2").value;
            var diengiai = document.getElementById("Diengiai").value;

            if (sotiepnhan) {
                //dongiamua = val2;
                document.getElementById("val-1").innerHTML = sotiepnhan;
                document.getElementById("val-2").innerHTML = ngay1;
                document.getElementById("val-3").innerHTML = matuimau;
                document.getElementById("val-4").innerHTML = hansudung;
                document.getElementById("val-5").innerHTML = ngaylaymau;
                document.getElementById("val-6").innerHTML = nhomabo;
                document.getElementById("val-7").innerHTML = nhomrhd;
                document.getElementById("val-8").innerHTML = soluong;
                document.getElementById("val-9").innerHTML = dongiamua;
                document.getElementById("val-10").innerHTML = loaisanpham;
                document.getElementById("val-11").innerHTML = donvigiao;
                document.getElementById("val-12").innerHTML = donvinhan;
                document.getElementById("val-13").innerHTML = nguoinhan;
                document.getElementById("val-14").innerHTML = dathang;
                document.getElementById("val-15").innerHTML = trangthai;
                document.getElementById("val-16").innerHTML = nguonmau;
                document.getElementById("val-17").innerHTML = kyhieumauhoadon;
                document.getElementById("val-18").innerHTML = thanhtienvat;
                document.getElementById("val-19").innerHTML = soseri;
                document.getElementById("val-20").innerHTML = ngay2;
                document.getElementById("val-21").innerHTML = diengiai;
            }
        }
    </script>

    <link rel="icon" href="http://www.thuthuatweb.net/wp-content/themes/HostingSite/favicon.ico" type="image/x-ico" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Animated Buttons with CSS3" />
    <meta name="keywords" content="css3, transitions, button, animation, hover, effect, icon, call-to-action, active" />

    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
    <!--button-->

    <!--cố định  bảng-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js">
    </script>
    <script>
        function scrolify(tblAsJQueryObject, height) {
            var oTbl = tblAsJQueryObject;

            // for very large tables you can remove the four lines below
            // and wrap the table with <div> in the mark-up and assign
            // height and overflow property  
            var oTblDiv = $("<div/>");
            oTblDiv.css('height', height);
            oTblDiv.css('overflow', 'scroll');
            oTbl.wrap(oTblDiv);

            // save original width
            oTbl.attr("data-item-original-width", oTbl.width());
            oTbl.find('thead tr td').each(function() {
                $(this).attr("data-item-original-width", $(this).width());
            });
            oTbl.find('tbody tr:eq(0) td').each(function() {
                $(this).attr("data-item-original-width", $(this).width());
            });


            // clone the original table
            var newTbl = oTbl.clone();

            // remove table header from original table
            oTbl.find('thead tr').remove();
            // remove table body from new table
            newTbl.find('tbody tr').remove();

            oTbl.parent().parent().prepend(newTbl);
            newTbl.wrap("<div/>");

            // replace ORIGINAL COLUMN width                
            newTbl.width(newTbl.attr('data-item-original-width'));
            newTbl.find('thead tr td').each(function() {
                $(this).width($(this).attr("data-item-original-width"));
            });
            oTbl.width(oTbl.attr('data-item-original-width'));
            oTbl.find('tbody tr:eq(0) td').each(function() {
                $(this).width($(this).attr("data-item-original-width"));
            });
        }

        $(document).ready(function() {
            scrolify($('#tblNeedsScrolling'), 304); // 160 is height
        });
    </script>
    <!--cố định bản -->
  <script>
        document.addEventListener("DOMContentLoaded",function(){
            var nut = document.querySelector('div.icon i');
            var mobile = document.querySelector('ul');
            nut.addEventListener('click',function(){
                mobile.classList.toggle('active');
            })
        })
        </script>
   
</head>
<body>
    
       <div class="sidebar">
     <div class="logo"><a href="index"><image  width="80px" height="50px;"  src="resources/image/logo-vnpt.png"></a></div>
        <nav>
            <ul>
                <li>
                <a href="kholuutrumau"">Kho Lưu Trữ Máu </a>
                
                </li>
                <li><a href="#">Xuất Máu</a>
                <ul class="cap_2">
                    <li onclick="window.location.replace('xuatmautrongbenhvien')"> Trong Bệnh Viện </li>
                    <li onclick="window.location.replace('xuatmaungoaibenhvien')"> Ngoài Bệnh Viện</li>
                  
                </ul>
                </li>
                
                <li><a href="lapphieulinhmau">Lập Phiếu Lĩnh Máu</a></li>
                <li><a href="hoantratuimau">Hoàn Trả Túi Máu</a></li>
                <li><a href="thanhlytuimau">Thanh Lý Túi Máu</a></li>
                <li><a href="biendongkho">Biến Động Kho</a></li>
                  <li><a href="kiemke">Kiểm Kê</a></li>
            </ul>
            <div class="icon">
                <i class="fas fa-bars"></i>
            </div>
        </nav>
    </div>
    <div class="wrap1">
        <div class="wrap">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
            <script type="text/javascript">
                function searchToggle(obj, evt) {
                    var container = $(obj).closest('.search-wrapper');

                    if (!container.hasClass('active')) {
                        container.addClass('active');
                        evt.preventDefault();
                    } else if (container.hasClass('active') && $(obj).closest('.input-holder').length == 0) {
                        container.removeClass('active');
                        // clear input
                        container.find('.search-input').val('');
                        // clear and hide result container when we press close
                        container.find('.result-container').fadeOut(100, function() {
                            $(this).empty();
                        });
                    }
                }
            </script>
            <div class="content">
                <div id="tren">
                    <div id="form-kholuutrumau">
                        <div class="nhapthongtin2">
                            <table class="form-table2">
                                <form name="formnhapthongtin2">
                                    <tr>
                                        <td id="stn" align="right">Số tiếp nhận: </td>
                                        <td id="inputstn">
                                            <input autofocus="autofocus" type="text" id="Sotiepnhan"> </td>
                                        <td id="ngaystn">Ngày : </td>
                                        <td id="inputstn">
                                            <input type="date" id="Ngay1"> </td>
                                    </tr>
                                    <tr>
                                        <td id="stn">Nơi nhận mẫu:</td>
                                        <td class="m1" colspan="3">
                                            <select id="Nhacungcap">
                                                <option>

                                                </option>
                                                <option>
                                                    Bạch mai
                                                </option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="stn">Người nhận : </td>
                                        <td class="m1" colspan="3">
                                            <select id="Donvigiao">
                                                <option>

                                                </option>
                                                <option>
                                                    B
                                                </option>
                                                <option>
                                                    O
                                                </option>
                                                <option>
                                                    AB
                                                </option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="stn">Nơi giao mẫu: </td>
                                        <td class="m1" colspan="3">
                                            <select id="Donvinhan">
                                                <option value="default"></option>
                                                <option>Kho răng hàm mặt</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="stn">Người giao: </td>
                                        <td class="m1" colspan="3">
                                            <select id="Nguoinhan">
                                                <option value="default"></option>
                                                <option>System Administrator</option>
                                            </select>
                                        </td>
                                    </tr>
                                </form>
                            </table>
                        </div>
                    </div>

                    <!--end nhap thong tin-->
                    <div id="info">

                        <table id="form-hienthi">
                            <form name="formhienthithongtin">

                                <tr>
                                    <td id="pl">Phiếu lĩnh:</td>
                                    <td class="pl1">
                                        <select>
                                            <option>

                                            </option>
                                            <option>
                                                Bạch mai
                                            </option>
                                        </select>
                                    </td>
                                    <td colspan="2" align="center" class="yte">Ngày:</td>

                                    <td colspan="2" class="yte1">
                                        <input type="date"> </td>
                                </tr>
                                <tr>
                                    <td id="pl">Số bệnh án: </td>
                                    <td class="pl1">
                                        <input type="text"> </td>
                                    <td colspan="2" class="yte" align="center">Mã y tế: </td>

                                    <td colspan="2" class=" yte1">
                                        <input type="text"> </td>

                                </tr>
                                <tr>
                                    <td id="pl">Tên bệnh nhân: </td>
                                    <td class="pl1">
                                        <input type="text" id="Soseri"> </td>


                                    <td colspan="2" class="yte">Đối tượng: </td>

                                    <td colspan="2" class="yte1">
                                        <select id="Trangthai">
                                            <option>

                                            </option>
                                            <option>
                                                Bạch mai
                                            </option>
                                        </select>
                                    </td>

                                </tr>
                                <td id="pl">Năm sinh: </td>
                                <td class="pl1">
                                    <input type="date"> </td>
                                <td id="">Nam: </td>
                                <td class="radi">
                                    <input type="radio"> </td>
                                <td>Nữ: </td>
                                <td class="gt">
                                    <input type="radio"> </td>
                                <tr>
                                    <td class="pl">Địa chỉ: </td>
                                    <td class="pl" colspan="5">
                                        <textarea cols="52" rows="2" id="Diengiai"></textarea>
                                    </td>

                                </tr>
                                <tr>
                                    <td class="pl">Ghi chú: </td>
                                    <td  class="pl" colspan="5">
                                        <textarea cols="52" rows="2" id="Diengiai"></textarea>
                                    </td>

                                </tr>
                            </form>
                        </table>

                    </div>
              
                <!--end thong tin mau-->

                <div class="table-tuimau">
                    <table id="ban-tuimau">
                        <form>
                            <tr>
                                <td class="banmm1">Mã túi máu:</td>
                                <td class="banmm">
                                    <input type="text"> </td>
                                <td class="banmm2">Tên máu:</td>
                                <td class="banmm">
                                    <select id="Trangthai">
                                        <option>

                                        </option>
                                        <option>
                                            Bạch mai
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="banmm1">Lô nhập:</td>
                                <td class="banmm">
                                    <select id="Trangthai">
                                        <option>

                                        </option>
                                        <option>
                                            Bạch mai
                                        </option>
                                    </select>
                                </td>
                                <td class="banmm2">Số lượng xuất:</td>
                                <td class="banmm">
                                    <input type="date"> </td>
                            </tr>
                            <tr>
                                <td class="banmm1">Nhóm máu AOB:</td>
                                <td class="banmm">
                                    <input type="text">
                                </td>

                                <td class="banmm2">Nhóm RhD:</td>
                                <td class="banmm">
                                    <input type="text">
                                </td>
                            </tr>
                            <tr>
                                <td class="banmm1">Số lần xét nghiệm:</td>
                                <td class="banmm">
                                    <input type="text" id="Soluong">
                                </td>
                                <td class="banmm2">Gửi kho:</td>
                                <td class="banmm3">
                                    <input type="checkbox">
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="banmm2">Đơn xin kiểm tra xét nghiệm máu:</td>
                                <td class="banmm3">
                                    <input type="checkbox" id="Thanhtienvat">
                                </td>

                            </tr>
                        </form>
                    </table>
                </div>
                
                  </div>
                <br>
                  <div class="nut">
                        <button id="nutxem" name="btnXem" value="Add" onclick="getInfo()" type="button"> Xem Thông tin</button>

                    </div>
                <!--end table-nhommau-->
                <br>
                <!---end túi máu -->
                <!-- bang thong tin-->
                <div class="panel-body">
                    <div class="panel-body2">
                      
                        <div class="form1">
                            <form class="bangthongtin">


                                <table class="bangthong-tin" cellspacing="0" border="1 " cellpadding="2" id="tblNeedsScrolling">
                                    <thead>
                                        <tr id="tieudeban">

                                            <th>
                                                <p class="overflow-ellipsis">Số tiếp nhận</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Ngày:</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Mã túi máu</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Hạn dùng</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Ngày lấy máu</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Nhóm ABO</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Nhóm RhD</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Số Lượng</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Đơn giá mua</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Loại Sản Phẩm</p>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div id="val-1"></div>
                                                <p class="overflow-ellipsis">hniokopkinjompmfvgbnjlmkjnhjghjhj</p>
                                            </td>
                                            <td>
                                                <div id="val-2"></div>
                                                <p class="overflow-ellipsis">biuniomo;pomkmkm</p>
                                            </td>
                                            <td>
                                                <div id="val-3"></div>
                                                <p class="overflow-ellipsis">jbyvtfuhihugyftfyug</p>
                                            </td>
                                            <td>
                                                <div id="val-4"></div>
                                                <p class="overflow-ellipsis">buuihuiyuybyvtcr</p>
                                            </td>
                                            <td>
                                                <div id="val-5"></div>
                                                <p class="overflow-ellipsis">jbjbbuihiojim</p>
                                            </td>
                                            <td>
                                                <div id="val-6"></div>
                                                <p class="overflow-ellipsis">iuyg65d4sdrtgyuf</p>
                                            </td>
                                            <td>
                                                <div id="val-7"></div>
                                                <p class="overflow-ellipsis">tyvrtd5fgiuhu</p>
                                            </td>
                                            <td>
                                                <div id="val-8"></div>
                                                <p class="overflow-ellipsis">yttcrtyugyuftrdew34</p>
                                            </td>
                                            <td>
                                                <div id="val-9"></div>
                                                <p class="overflow-ellipsis">de4serttfrc</p>
                                            </td>
                                            <td>
                                                <div id="val-9"></div>
                                                <p class="overflow-ellipsis">de4serttfrc</p>
                                            </td>



                                        </tr>

                                        <tr>
                                            <td>
                                                <div id="val-1"></div>
                                                <p class="overflow-ellipsis">hniokopkinjompmfvgbnjlmkjnhjghjhj</p>
                                            </td>
                                            <td>
                                                <div id="val-2"></div>
                                                <p class="overflow-ellipsis">biuniomo;pomkmkm</p>
                                            </td>
                                            <td>
                                                <div id="val-3"></div>
                                                <p class="overflow-ellipsis">jbyvtfuhihugyftfyug</p>
                                            </td>
                                            <td>
                                                <div id="val-4"></div>
                                                <p class="overflow-ellipsis">buuihuiyuybyvtcr</p>
                                            </td>
                                            <td>
                                                <div id="val-5"></div>
                                                <p class="overflow-ellipsis">jbjbbuihiojim</p>
                                            </td>
                                            <td>
                                                <div id="val-6"></div>
                                                <p class="overflow-ellipsis">iuyg65d4sdrtgyuf</p>
                                            </td>
                                            <td>
                                                <div id="val-7"></div>
                                                <p class="overflow-ellipsis">tyvrtd5fgiuhu</p>
                                            </td>
                                            <td>
                                                <div id="val-8"></div>
                                                <p class="overflow-ellipsis">yttcrtyugyuftrdew34</p>
                                            </td>
                                            <td>
                                                <div id="val-9"></div>
                                                <p class="overflow-ellipsis">de4serttfrc</p>
                                            </td>
                                            <td>
                                                <div id="val-9"></div>
                                                <p class="overflow-ellipsis">de4serttfrc</p>
                                            </td>


                                        </tr>
                                        <tr>
                                            <td>
                                                <div id="val-1"></div>
                                                <p class="overflow-ellipsis">hniokopkinjompmfvgbnjlmkjnhjghjhj</p>
                                            </td>
                                            <td>
                                                <div id="val-2"></div>
                                                <p class="overflow-ellipsis">biuniomo;pomkmkm</p>
                                            </td>
                                            <td>
                                                <div id="val-3"></div>
                                                <p class="overflow-ellipsis">jbyvtfuhihugyftfyug</p>
                                            </td>
                                            <td>
                                                <div id="val-4"></div>
                                                <p class="overflow-ellipsis">buuihuiyuybyvtcr</p>
                                            </td>
                                            <td>
                                                <div id="val-5"></div>
                                                <p class="overflow-ellipsis">jbjbbuihiojim</p>
                                            </td>
                                            <td>
                                                <div id="val-6"></div>
                                                <p class="overflow-ellipsis">iuyg65d4sdrtgyuf</p>
                                            </td>
                                            <td>
                                                <div id="val-7"></div>
                                                <p class="overflow-ellipsis">tyvrtd5fgiuhu</p>
                                            </td>
                                            <td>
                                                <div id="val-8"></div>
                                                <p class="overflow-ellipsis">yttcrtyugyuftrdew34</p>
                                            </td>
                                            <td>
                                                <div id="val-9"></div>
                                                <p class="overflow-ellipsis">de4serttfrc</p>
                                            </td>
                                            <td>
                                                <div id="val-9"></div>
                                                <p class="overflow-ellipsis">de4serttfrc</p>
                                            </td>

                                    </tbody>

                                </table>

                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <br>

    <div class="footer">

        <span>
			<marquee>Tư vấn hệ thống - Liên hệ: 070xxxxx - Website công ty: vnptit.vn</marquee>
		</span>

    </div>

</body>

</html>