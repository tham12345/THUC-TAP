<%-- 
    Document   : lapphieulinhmau
    Created on : Jun 19, 2019, 4:12:45 PM
    Author     : TranTham
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Lập phiếu lĩnh máu 1</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="This is website management hospital">
        <meta name="author" content="Team real intership in VNPT-IT">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <link rel="stylesheet" type="text/css" href="resources/css/style_lapphieulinhmau.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">

        <script src="jquery.js"></script>
        <script src="lapphieulinhau.js"></script>
        <script src="/socket.io/socket.io.js"></script>
        <!--button-->
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">


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
                oTbl.find('thead tr td').each(function () {
                    $(this).attr("data-item-original-width", $(this).width());
                });
                oTbl.find('tbody tr:eq(0) td').each(function () {
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
                newTbl.find('thead tr td').each(function () {
                    $(this).width($(this).attr("data-item-original-width"));
                });
                oTbl.width(oTbl.attr('data-item-original-width'));
                oTbl.find('tbody tr:eq(0) td').each(function () {
                    $(this).width($(this).attr("data-item-original-width"));
                });
            }

            $(document).ready(function () {
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
                    container.find('.result-container').fadeOut(100, function () {
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
                                            <td id="stn" align="right"> Số phiếu:
                                              <td id="inputstn"> 
                                                <input type="text" >  
                                            </td>
                                        </tr>
                                        <tr>
                                            <td id="stn" align="right"> Bệnh viện:</td>
                                            <td id="inputstn"> 
                                                <input type="text" >
                                            </td>
                                        
                                            <td id="stn" align="right">Khoa/phòng:</td>
                                            <td id="inputstn"> 
                                                <input type="text" >
                                            </td>                                         
                                        </tr>
                                        <tr>
                                            <td id="stn">Người phát:</td>
                                            <td id="inputstn" >
                                                <input type="text" >
                                            </td>
                                        
                                            <td id="stn" align="right">Người lĩnh: </td>
                                            <td id="inputstn">
                                                <input  type="text">
                                            </td>                                                                    
                                        </tr>
                                       
                                        
                                    </form>
                                </table>
                            </div>
                        </div>
 <div class="table-tuimau">
                            <table id="ban-tuimau">
                                <form>
                                    <tr>
                                        <td class="banmm1">
                                            Mã máu :
                                            
                                        </td>
                                        <td class="banmm">
                                            <input type="text">      
                                        </td>
                                         <td class="banmm1">
                                           Tên máu:
                                            
                                        </td>
                                        <td class="banmm">
                                            <input type="text">      
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                        <td class="banmm1">Nhóm máu AOB:</td>
                                        <td class="banmm">
                                            <select id="Trangthai">
                                                <option>

                                                </option>
                                                <option>
                                                    Bạch mai
                                                </option>
                                            </select>
                                        </td>   
                                        <td class="banmm1">Nhóm RhD:</td>
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
                                        <td class="banmm1">
                                            Số lượng :
                                            
                                        </td>
                                        <td class="banmm">
                                            <input type="text">      
                                        </td>
                                         <td class="banmm1">
                                           Đơn vị:
                                            
                                        </td>
                                        <td class="banmm">
                                            <input type="text">      
                                        </td>   
                                    </tr>
                                    
                                               
                                </form>
                            </table>
                        </div>
                        <!--end nhap thong tin-->
                        <div id="info">

                            <table id="form-hienthi">
                                <form name="formhienthithongtin">
                                    
                                    <tr>
                                        <td id="pl">Ngày giờ yêu cầu: </td>
                                        <td class="pl1" colspan="2">
                                            <input type="datetime"  > </td>
                                    </tr>
                                    <td id="pl">Ngày giao: </td>
                                    <td class="pl1"  colspan="2" >
                                        <input type="datetime"> </td>

                                    </tr>
                                    
                                    <tr>
                                        <td class="pl">Ghi chú: </td>
                                        <td class="pl" colspan="2">
                                            <textarea cols="27" rows="3" id="Diengiai"></textarea>
                                        </td>

                                    </tr>
                                </form>
                            </table>

                        </div>

                        <!--end thong tin mau-->

                       

                    </div>
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
                                            <%
                                                List<Map<String, Object>> listBN = (List<Map<String, Object>>) request.getAttribute("listBN");
                                            %>
                                            <%for (Map<String, Object> row : listBN) {%>
                                            <tr>

                                                <td class="td-stt">1</td>
                                                <td><%=row.get("bn_ma")%></td>
                                                <td><%=row.get("bn_ten")%></td>
                                                <td>1</td>
                                            </tr>

                                            <%}%>
                                           
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
