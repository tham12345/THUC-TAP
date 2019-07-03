<%-- 
    Document   : biendongkho
    Created on : Jun 19, 2019, 4:19:49 PM
    Author     : TranTham
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title> Biến động kho 1</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="This is website management hospital">
    <meta name="author" content="Team real intership in VNPT-IT">
<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="resources/css/style_biendongkho.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">

    <script src="jquery.js"></script>
    <script src="biendongkho.js"></script>
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
                                            <td id="stn" align="right">Nhập: </td>
                                            <td id="inputstn">
                                                <input type="radio" id="Ngay1"> </td>
                                            <td id="ngaystn">Xuất: </td>
                                            <td id="inputstn">
                                                <input type="radio" id="Ngay1"> </td>
                                    </tr>
                                    <tr>
                                        <td id="stn" align="right">Từ ngày: </td>
                                        <td id="inputstn">
                                            <input type="date" id="Ngay1"> </td>
                                        <td id="ngaystn">Đến ngày: </td>
                                        <td id="inputstn">
                                            <input type="date" id="Ngay1"> </td>
                                    </tr>
                                    <tr>
                                        <td id="stn">Nguồn máu:</td>
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
                                        <td id="stn">Mục đích: </td>
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
                                        <td id="stn">Kho: </td>
                                        <td class="m1" colspan="3">
                                            <select id="Donvinhan">
                                                <option value="default"></option>
                                                <option>Kho răng hàm mặt</option>
                                            </select>
                                        </td>
                                    </tr>
                                    
                                </form>
                            </table>
                        </div>
                    </div>

               
                    <div id="info">
                        <div id="info1">
                        <table id="form-hienthi">
                            <form name="formhienthithongtin">

                                <tr>
                                    <td id="pp"><input type="checkbox" ></td>
                                    <td id="pl1"  >TÊN MÁU:</td>                                 
                                </tr>
                            </table>
                        </div>
                        <div id="info2" >
                            <table id="form-hienthi" class="form-hienthi" >
                                <tr>
                                    <td id="pp" ><input type="checkbox" ></td>
                                        <td id="pl"></td>     

                                </tr>
                                <tr>
                                    <td id="pp"><input type="checkbox" ></td>
                                        <td id="pl"></td>     

                                </tr>
                                <tr>
                                    <td id="pp"><input type="checkbox" ></td>
                                        <td id="pl"></td>     
                                </tr>
                                
                                <tr>
                                        <td id="pp"><input type="checkbox" ></td>
                                        <td id="pl"></td>     

                                </tr>
                                <tr>
                                        <td id="pp"><input type="checkbox" ></td>
                                        <td id="pl"></td>     

                                </tr>
                                     <tr>
                                    <td id="pp" ><input type="checkbox" ></td>
                                        <td id="pl"></td>     

                                </tr>
                                <tr>
                                    <td id="pp"><input type="checkbox" ></td>
                                        <td id="pl"></td>     

                                </tr>
                                <tr>
                                    <td id="pp"><input type="checkbox" ></td>
                                        <td id="pl"></td>     
                                </tr>
                                
                                <tr>
                                        <td id="pp"><input type="checkbox" ></td>
                                        <td id="pl"></td>     

                                </tr>
                                <tr>
                                        <td id="pp"><input type="checkbox" ></td>
                                        <td id="pl"></td>     

                                </tr>
                            </form>
                        </table>
                    </div>
                    </div>
        
                <!--end thong tin mau-->

                <div id="table-tuimau">
                        <table id="ban-tuimau">
                            <form>
                                <tr>
                                    <td colspan="2" id="banmm2" >Chi tiết</td>
                                                      
                                </tr>
                                <tr>
                                        <td class="banmm1">Ngày biến động:</td>
                                        <td class="banmm">
                                                <input type="date"> </td>     
                                </tr>
                                <tr>
                                        <td class="banmm1">Số lượng:</td>
                                        <td class="banmm">
                                                <input type="text"> </td>     
                                            </td>                         
                                </tr>
                                <tr>
                                    <td class="banmm1">Nơi nhân/xuất:</td>
                                    <td class="banmm">
                                        <input type="text">
                                    </td>
                                </tr>   
                                <tr>
                                    <td class="banmm1">Ghi chú:</td>
                                    <td class="banmm">
                                        <input type="text">
                                    </td>
                                </tr>  
                            </form>
                        </table>
                    </div>
                </div>
                <div class="nut">
                    <button id="nutxem" onclick="getInfo()" type="button"> Xem Thông tin</button>

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
                                                <p class="overflow-ellipsis">Từ ngày</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Đến ngày</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Nguồn Máu</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Mục đích</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Kho</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Tên máu</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Loại máu</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Số lượng</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Đã xuất</p>
                                            </th>
                                            <th>
                                                <p class="overflow-ellipsis">Đã nhập</p>
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