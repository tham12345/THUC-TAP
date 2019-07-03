<%-- 
    Document   : html
    Created on : Jun 19, 2019, 9:54:49 AM
    Author     : ASUS PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Ngân Hàng Máu</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <link rel="stylesheet" type="text/css" href="resources/css/style_index.css">
        
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">
    </head>
    <body>
        <div class="wrap">
            <div class="title">
                <div class="title-div1"></div>
                <div class="title-div2">Quản Lí Ngân Hàng Máu</div>
                <div class="title-div3">
                    <div class="button-trangchu">Thoát</div>
                    <a onclick="window.location.replace('/')">
                        <div class="button-trangchu">Trang chủ</div>
                    </a>
                </div>
            </div>
            <div class="content">
                <div class="content1">
                    <div class="chucnang">
                        <a href="danhmucmachepham" class="a-cn">
                            <div class="nd-chucnang">
                                <p>Quản lí danh mục mã chế phẩm </p>
                            </div>
                        </a>
                    </div>
                    <div class="chucnang">
                        <a href="kholuutrumau" class="a-cn">
                            <div class="nd-chucnang">
                                <p>Quản lí nhập kho lưu trữ máu</p>
                            </div>
                        </a>
                    </div>
                    <div class="chucnang">
                        <a href="xuatmautrongbenhvien" class="a-cn">
                            <div class="nd-chucnang">
                                <p>Quản lí xuất máu trong bệnh viện</p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="content2">
                    <div class="chucnang">
                        <a href="hoantratuimau" class="a-cn">
                            <div class="nd-chucnang">
                                <p>Quản lí hoàn trả túi máu đã xuất</p>
                            </div>
                        </a>
                    </div>
                    <div class="chucnang">
                        <a href="thanhlytuimau" class="a-cn">
                            <div class="nd-chucnang">
                                <p>Quản lí thanh lý</p>
                            </div>
                        </a>
                    </div>
                    <div class="chucnang">
                        <a href="lplm" class="a-cn">
                            <div class="nd-chucnang">
                                <p>Lập phiếu lĩnh máu</p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="content3">
                    <div class="chucnang">
                        <a href="xuatmaungoaibenhvien" class="a-cn">
                            <div class="nd-chucnang">
                                <p>Quản lí xuất máu ngoài bệnh viện</p>
                            </div>
                        </a>
                    </div>
                    <div class="chucnang">
                        <a href="tonghopbaocao" class="a-cn">
                            <div class="nd-chucnang">
                                <p>Tổng hợp báo cáo</p>
                            </div>
                        </a>
                    </div>
                    <div class="chucnang">
                        <a href="kiemke" class="a-cn">
                            <div class="nd-chucnang">
                                <p>Kiểm kê</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="footer">
                <marquee>Thực tập hè team 4 đứa</marquee>
            </div>
        </div>
    </body>
</html>
