<%-- 
    Document   : kho
    Created on : Jun 19, 2019, 3:32:55 PM
    Author     : TranTham
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <title> Kho Lưu trữ máu 1</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="This is website management hospital">
    <meta name="author" content="Team real intership in VNPT-IT">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <link rel="stylesheet" type="text/css" href="resources/css/style_kholuutrumau.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">

    <script src="jquery.js"></script>
    <script src="kholuutrumau.js"></script>
    <script src="/socket.io/socket.io.js"></script>



    <link rel="icon" href="http://www.thuthuatweb.net/wp-content/themes/HostingSite/favicon.ico" type="image/x-ico" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Animated Buttons with CSS3" />
    <meta name="keywords" content="css3, transitions, button, animation, hover, effect, icon, call-to-action, active" />

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />

    <link href='http://fonts.googleapis.com/css?family=Alegreya+SC:700,400italic' rel='stylesheet' type='text/css' />
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
            scrolify($('#tblNeedsScrolling'), 397); // 160 is height
        });
    </script>
    
     <script>
        document.addEventListener("DOMContentLoaded",function(){
            var nut = document.querySelector('div.icon i');
            var mobile = document.querySelector('ul');
            nut.addEventListener('click',function(){
                mobile.classList.toggle('active');
            })
        })
        </script>
    <!--cố định bản -->
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
                                        <td id="stn">Nhà cung cấp:</td>
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
                                        <td id="stn">Đơn vị giao: </td>
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
                                        <td id="stn">Đơn vị nhận: </td>
                                        <td class="m1" colspan="3">
                                            <select id="Donvinhan">
                                                <option value="default"></option>
                                                <option>Kho răng hàm mặt</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="stn">Người nhận: </td>
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
                    <!--end nhap thong tin-->
                    <div id="info">
                        <table id="form-hienthi">
                            <form>
                               <tr>
                                    <td id="hd">Trạng thái:</td>
                                    <td class="tt">
                                        <select>
                                            <option>
                                            </option>
                                            <option>
                                                Bạch mai
                                            </option>
                                        </select>
                                    </td>
                                    <td align="center" class="nguonmau1">Nguồn máu:</td>
                                    <td class="tt" colspan="2">
                                        <select>
                                            <option value="default"></option>
                                            <option>
                                                Viện phí
                                            </option>
                                            <option>
                                            </option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td id="hd">Ký hiệu mẫu hóa đơn: </td>
                                    <td class=" kyhieu" colspan="4">
                                        <input type="text" id="Kyhieumauhoadon"> </td>
                                </tr>
                                <tr>
                                    <td id="hd">Số seri: </td>
                                    <td class="seri1">
                                        <input type="text" id="Soseri"> </td>
                                    <td class="seri2">
                                        <input type="text"> </td>
                                    <td id="ngayseri">Ngày: </td>
                                    <td class="seri3">
                                        <input type="date" id="Ngay2"> </td>
                                </tr>
                                <tr>
                                    <td id="hd">Diễn giải: </td>
                                    <td class="hd" colspan="4">
                                        <textarea cols="60" rows="3" id="Diengiai"></textarea>
                                    </td>
                                </tr>
                            </form>
                        </table>
                    </div>
                
                <!--end thong tin mau-->
                <div class="table-tuimau">
                    <table id="ban-tuimau">
                        <form class="form-inline">
                            <tr>
                                <td>Mã túi máu:</td>
                                <td>
                                    <input class="banmm" type="text" id="Matuimau"> </td>
                                <td>Ngày lấy máu</td>
                                <td>
                                    <input class="banmm" type="date" id="Ngaylaymau"> </td>
                            </tr>
                            <tr>
                                <td>Đơn giá mua:</td>
                                <td>
                                    <input class="banmm" type="text" id="Dongiamua">
                                </td>

                                <td>Hạn sử dụng:</td>
                                <td>
                                    <input class="banmm" type="date" id="Hansudung"> </td>
                            </tr>
                            <tr>
                                <td>Đặt hàng:</td>
                                <td>
                                    <input class="banmm" type="text" id="Dathang">
                                </td>

                                <td>Số lượng:</td>
                                <td>
                                    <input class="banmm" type="text" id="Soluong">
                                </td>
                            </tr>
                            <tr>
                                <td>Loại sản phẩm:</td>
                                <td class="sanpham">
                                    <select class="sanpham1" id="Loaisanpham">
                                        <option value="default"></option>
                                        <option>Đã nhập kho</option>
                                        <option>Bạch mai</option>
                                    </select>
                                </td>
                                <td>nhóm AOB:</td>
                                <td>
                                    <select class="sanpham1" id="NhomABO">
                                        <option value="default"></option>
                                        <option>
                                            A
                                        </option>
                                        <option>
                                            O
                                        </option>
                                        <option>
                                            B
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>nhóm RhD:</td>
                                <td>
                                    <select class="sanpham1" id="NhomRhD">
                                        <option value="default"></option>
                                        <option>
                                            D+
                                        </option>
                                        <option>
                                            Bạch mai
                                        </option>
                                    </select>
                                </td>
                                <td>Thành tiền VAT:</td>
                                <td>
                                    <input class="banmm" type="text" id="Thanhtienvat">
                                </td>
                            </tr>
                        </form>
                    </table>
                </div>
                </div>
         
                <div class="nut">
                    <button id="nutxem" onclick="getInfo()" type="button"> Xem Thông tin</button>
                </div>
                <!-- bang thong tin-->
                <div class="panel-body">
                    <div class="panel-body2">

                        <div class="form1">
                            <form class="bangthongtin">
                                <table class="bangthong-tin" cellspacing="0" border="1 " cellpadding="2" id="tblNeedsScrolling">
                                    <thead>
                                        <tr id="tieudeban">

                                            <th>
                                                <div class="test" ><span>Số tiếp nhậnfdgsdfgdsgsdfgvdfxbxfvd</span></div> 
                                            </th>
                                            <th>
                                                <div class="test">Ngày:</div>
                                            </th>
                                            <th>
                                                <div class="test">Mã túi máu</div>
                                            </th>
                                            <th>
                                                <div class="test">Hạn dùng</div>
                                            </th>
                                            <th>
                                                <div class="test">Ngày lấy máu</div>
                                            </th>
                                            <th>
                                                <div class="test">Nhóm ABO</div>
                                            </th>
                                            <th>
                                                <div class="test">Nhóm RhD</div>
                                            </th>
                                            <th>
                                                <div class="test">Số Lượng</div>
                                            </th>
                                            <th>
                                                <div class="test">Đơn giá mua</div>
                                            </th>
                                            <th>
                                                <div class="test">Loại Sản Phẩm</div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div id="val-1"></div>
                                                <div class="test">jsdjjksakkdasjjjdsajkdkaaskkdkjask</div> 
                                            </td>
                                            <td>
                                                <div id="val-2"></div>
                                                <div class="test">biuniomo;pomkmkm</div>
                                            </td>
                                            <td>
                                                <div id="val-3"></div>
                                                <div class="test">jbyvtfuhihugyftfyug</div>
                                            </td>
                                            <td>
                                                <div id="val-4"></div>
                                                <div class="test">buuihuiyuybyvtcr</div>
                                            </td>
                                            <td>
                                                <div id="val-5"></div>
                                                <div class="test">jbjbbuihiojim</div>
                                            </td>
                                            <td>
                                                <div id="val-6"></div>
                                                <div class="test">iuyg65d4sdrtgyuf</div>
                                            </td>
                                            <td>
                                                <div id="val-7"></div>
                                                <div class="test">tyvrtd5fgiuhu</div>
                                            </td>
                                            <td>
                                                <div id="val-8"></div>
                                                <div class="test">yttcrtyugyuftrdew34</div>
                                            </td>
                                            <td>
                                                <div id="val-9"></div>
                                                <div class="test">de4serttfrc</div>
                                            </td>
                                            <td>
                                                <div id="val-9"></div>
                                                <div class="test">de4serttfrc</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div id="val-1"></div>
                                                <div class="test">jsdjjksakkdasjjjdsajkdkaaskkdkjask</div> 
                                            </td>
                                            <td>
                                                <div id="val-2"></div>
                                                <div class="test">biuniomo;pomkmkm</div>
                                            </td>
                                            <td>
                                                <div id="val-3"></div>
                                                <div class="test">jbyvtfuhihugyftfyug</div>
                                            </td>
                                            <td>
                                                <div id="val-4"></div>
                                                <div class="test">buuihuiyuybyvtcr</div>
                                            </td>
                                            <td>
                                                <div id="val-5"></div>
                                                <div class="test">jbjbbuihiojim</div>
                                            </td>
                                            <td>
                                                <div id="val-6"></div>
                                                <div class="test">iuyg65d4sdrtgyuf</div>
                                            </td>
                                            <td>
                                                <div id="val-7"></div>
                                                <div class="test">tyvrtd5fgiuhu</div>
                                            </td>
                                            <td>
                                                <div id="val-8"></div>
                                                <div class="test">yttcrtyugyuftrdew34</div>
                                            </td>
                                            <td>
                                                <div id="val-9"></div>
                                                <div class="test">de4serttfrc</div>
                                            </td>
                                            <td>
                                                <div id="val-9"></div>
                                                <div class="test">de4serttfrc</div>
                                            </td>
                                        </tr>
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