<%@page import="com.nganhangmau.controller.Phieulinhmau"%>
<%@page import="com.nganhangmau.controller.PhieulinhmauDAO"%>
<%@page import="com.nganhangmau.controller.PhieulinhmauDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Lập phiếu lĩnh máu </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style_lplm.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script>
            function TongTien(){
                var n1 = document.getElementById("inputSl").value;
                var n2 = document.getElementById("inputDg").value;
                document.getElementById("inputTht").value = n1*n2;
            }
        </script>
    </head>
    <body>
        <form action="InsertServlet" method="POST" role="form" enctype="multipart/form-data">
            <table class="table table-borderless">
                <tbody>
                    <tr>
                        <td>ID phiếu lĩnh máu</td>
                        <td><input type="text" name="idplm" id="inputIdplm" class="form-control" value="" required="required"></td>
                        <td>Số phiếu lĩnh máu</td>
                        <td><input type="text" name="splm" id="inputSplm" class="form-control" value="" required="required"></td>
                        <td>Số nhập kho</td>
                        <td><input type="text" name="snk" id="inputSnk" class="form-control" value="" required="required"></td>                    
                    </tr>
                    <tr>
                        <td>Mã máu</td>
                        <td><input type="text" name="mm" id="inputMm" list="mm" class="form-control" value="" required="required" onkeyup="searchInfo()">
                        <%
                            List<Map<String, Object>> listMAU = (List<Map<String, Object>>) request.getAttribute("listMAU");
                        %>
                        <%for (Map<String, Object> row : listMAU) {%>
                        <datalist id="mm">
                            <option value="<%=row.get("mau_ma")%>">
                        <% }%>
                        </datalist>
                        </td>
                        <td>Tên máu</td>
                        <td><input type="text" name="tm" id="inputTm" list="tm" class="form-control" value="" required="required">
                        <%for (Map<String, Object> row : listMAU) {%>
                        <datalist id="tm">
                            <option value="<%=row.get("mau_ten")%>">
                        <% }%>
                        </datalist>
                        </td>
                        <td>Trạng thái</td>
                        <td><input type="text" name="tt" id="inputTt" class="form-control" value="" required="required"></td>
                    </tr>
                    <tr>
                        <td>Nơi yêu cầu</td>
                        <td><input type="text" name="nyc" id="inputNyc" list="nyc" class="form-control"  required="required">
                        <%
                            List<Map<String, Object>> listPB = (List<Map<String, Object>>) request.getAttribute("listPB");
                        %>
                        <%for (Map<String, Object> row : listPB) {%>
                        <datalist id="nyc">
                            <option value="<%=row.get("pb_ten")%>">
                        <% }%>
                        </datalist>
                        </td>
                        <td>Người lập</td>
                        <td><input type="text" name="nglap" id="inputNglap" list="nv" class="form-control" value="" required="required">
                        <%
                            List<Map<String, Object>> listNV = (List<Map<String, Object>>) request.getAttribute("listNV");
                        %>
                        <%for (Map<String, Object> row : listNV) {%>
                        <datalist id="nv">
                            <option value="<%=row.get("nv_ten")%>">
                        <% }%>
                        </datalist>
                        </td>
                        <td>Người lĩnh</td>
                        <td><input type="text" name="nglinh" id="inputNglinh" list="nv" class="form-control" value="" required="required">
                        <%for (Map<String, Object> row : listNV) {%>
                        <datalist id="nv">
                            <option value="<%=row.get("nv_ten")%>">
                        <% }%>
                        </datalist>
                        </td>
                    </tr>
                    <tr>
                        <td>Ngày lập</td>
                        <td><input type="date" name="nl" id="inputNl" class="form-control"  required="required"></td>
                        <td>Ngày nhận</td>
                        <td><input type="date" name="ngaynhan" id="inputNgaynhan" class="form-control" required="required"></td>
                        <td>Ghi chú</td>
                        <td><input type="text" name="gc" id="inputGc" class="form-control" value="" required="required"></td>
                    </tr>
                    <tr>
                        <td>Số lượng</td>
                        <td><input type="text" name="sl" id="inputSl" class="form-control" value="" required="required"></td>
                        <td>Đơn giá</td>
                        <td><input type="text" name="dg" id="inputDg" class="form-control" value="" required="required"></td>
                        <td><button type="button" class="btn btn-secondary" value="Tính tổng" onClick="TongTien()">TT</button></td>                       
                        <td><input type="text" name="tt" id="inputTht" class="form-control" value="" required="required"></td>
                    </tr>
                </tbody>
            </table> 
            <button type="submit" class="btn btn-secondary" name="insert">Thêm</button>
            <button type="reset" class="btn btn-secondary" name="reset">Làm mới</button>
        </form>
        <% ArrayList<Phieulinhmau> plm = new PhieulinhmauDAO().getList(); %>
        <table class="table table-bordered table-info table-hover">
            <thead>
                <tr>
                    <th><div class="checkbox">
                        <label>
                            <input type="checkbox" value="">
                        </label>
                    </div></th>
                    <th>ID phiếu lĩnh máu</th>
                    <th>Số phiếu lĩnh máu</th>
                    <th>Tên máu</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Thành tiền</th>
                </tr>
            </thead>
            
            <tbody>
                <%
                for (Phieulinhmau p : plm) {
                    String editURL = "lplm.jsp?id=" + p.getPlm_id();
                    String deleteURL = "DeleteServlet?id=" + p.getPlm_id();
                %>
                <tr>
                    <td><%=p.getPlm_id()%></td>
                    <td><%=p.getPlm_so()%></td>
                    <td><%=p.getPlm_noiyeucau()%></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </body>
</html>



