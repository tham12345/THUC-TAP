 package com.nganhangmau.controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
@Transactional
public class nganhangmaudao {
    private final Connection conn = null;
    private final Statement stmt = null;
    private final ResultSet rs = null;
    private final ConnectDB connectdb;
    
    public nganhangmaudao() {
        connectdb = new ConnectDB();
    }
   
    

    @Autowired
    private JdbcTemplate jdbctemplate;
    public List<Map<String , Object>> getBN(){
        final String sql = "select bn_ma, bn_ten from benhnhan";
        return jdbctemplate.queryForList(sql);
    }
    
    public List<Map<String , Object>> getNV(){
        final String sql = "select nv_ma, nv_ten from nhanvien";
        return jdbctemplate.queryForList(sql);
    }
    
    public List<Map<String , Object>> getMAU(){
        final String sql = "select mau_ma, mau_ten, mau_dvt from danhmucmau";
        return jdbctemplate.queryForList(sql);
    }
    
    public List<Map<String , Object>> getPB(){
        final String sql = "select pb_ma, pb_ten from phongban";
        return jdbctemplate.queryForList(sql);
    }
    
    public boolean add(Phieulinhmau plm){
        String sql = "insert into phieulinhmau (plm_id, plm_so, plm_noiyeucau, plm_ngaylap, plm_ngaynhan, plm_ghichu, plm_trangthai, dv_ma, nv_ma) values (?,?,?,?,?,?,?,?,?)";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, plm.getPlm_id());
            ps.setInt(2, plm.getPlm_so());
            ps.setString(3, plm.getPlm_noiyeucau());
            ps.setDate(4, new Date(plm.getPlm_ngaylap().getTime()));
            ps.setDate(5, new Date(plm.getPlm_ngaynhan().getTime()));
            ps.setString(6, plm.getPlm_ghichu());
            ps.setString(7, plm.getPlm_trangthai());
            ps.setString(8, plm.getDv_ma());
            ps.setString(9, plm.getNv_ma());
            return ps.executeUpdate() > 0;         
            } catch (SQLException e) {
        }
        return false;
    }
    
    public boolean edit(Phieulinhmau plm){
        String sql = "update phieulinhmau set plm_id=?, plm_so=?, plm_noiyeucau=?, plm_ngaylap=?, plm_ngaynhan=?, plm_ghichu=?, plm_trangthai=?, dv_ma=?, nv_ma=? where plm_id=?";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(2, plm.getPlm_so());
            ps.setString(3, plm.getPlm_noiyeucau());
            ps.setDate(4, new Date(plm.getPlm_ngaylap().getTime()));
            ps.setDate(5, new Date(plm.getPlm_ngaynhan().getTime()));
            ps.setString(6, plm.getPlm_ghichu());
            ps.setString(7, plm.getPlm_trangthai());
            ps.setString(8, plm.getDv_ma());
            ps.setString(9, plm.getNv_ma());
            ps.setInt(1, plm.getPlm_id());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
        }
        return false;
    }
    
    public ArrayList<Phieulinhmau> getList(){
        ArrayList<Phieulinhmau> list = new ArrayList<>();
        String sql = "select * from phieulinhmau";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Phieulinhmau p = new Phieulinhmau();
                p.setPlm_id(rs.getInt("plm_id"));
                p.setPlm_so(rs.getInt("plm_so"));
                p.setPlm_noiyeucau(rs.getString("plm_noiyeucau"));
                p.setPlm_ngaylap(rs.getDate("plm_ngaylap"));
                p.setPlm_ngaynhan(rs.getDate("plm_ngaynhan"));
                p.setPlm_ghichu(rs.getString("plm_ghichu"));
                p.setPlm_trangthai(rs.getString("plm_trangthai"));
                p.setDv_ma(rs.getString("dv_ma"));
                p.setNv_ma(rs.getString("nv_ma"));
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public Phieulinhmau getPhieulinhmauById(int plm_so){
       String sql = "select * from phieulinhmau where plm_id=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, plm_so);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Phieulinhmau p = new Phieulinhmau();
                p.setPlm_id(rs.getInt("plm_id"));
                p.setPlm_so(rs.getInt("plm_so"));
                p.setPlm_noiyeucau(rs.getString("plm_noiyeucau"));
                p.setPlm_ngaylap(rs.getDate("plm_ngaylap"));
                p.setPlm_ngaynhan(rs.getDate("plm_ngaynhan"));
                p.setPlm_ghichu(rs.getString("plm_ghichu"));
                p.setPlm_trangthai(rs.getString("plm_trangthai"));
                p.setDv_ma(rs.getString("dv_ma"));
                p.setNv_ma(rs.getString("nv_ma"));
                return p;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    
    
    
    
 
        public List<Map<String , Object>> getMaMau(){
        final String sql;
        sql = "select mau_ma, mau_ten from danhmucmau";
        return jdbctemplate.queryForList(sql);
    }
      public List<Map<String , Object>> getTenmau(){
        final String sql;
        sql = "select  mau_ma, mau_ten from danhmucmau";
        return jdbctemplate.queryForList(sql);
    }
     
    
    
   
     
      public List<Map<String , Object>> getTenKho(){
        final String sql = "select kho_ma, kho_ten from kho";
        return jdbctemplate.queryForList(sql);
    }}
  /*  
    public boolean add(Phieulinhmau plm){
        String sql = "insert into phieulinhmau (plm_id, plm_so, plm_noiyeucau, plm_ngaylap, plm_ngaynhan, plm_ghichu, plm_trangthai, dv_ma, nv_ma) values (?,?,?,?,?,?,?,?,?)";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, plm.getPlm_id());
            ps.setInt(2, plm.getPlm_so());
            ps.setString(3, plm.getPlm_noiyeucau());
            ps.setDate(4, new Date(plm.getPlm_ngaylap().getTime()));
            ps.setDate(5, new Date(plm.getPlm_ngaynhan().getTime()));
            ps.setString(6, plm.getPlm_ghichu());
            ps.setString(7, plm.getPlm_trangthai());
            ps.setString(8, plm.getDv_ma());
            ps.setString(9, plm.getNv_ma());
            return ps.executeUpdate() > 0;         
            } catch (SQLException e) {
        }
        return false;
    }

   
    */
    

  /*    
       public List<Map<String , Object>> getTenncc(){
        final String sql = "select ncc_ma, ncc_ten from danhmucnhaccc";
        return jdbctemplate.queryForList(sql);
    }
       
        public List<Map<String , Object>> getLydotl(){
        final String sql = "select pxtl_id, pxtl_ghichhu from chitietphieuthanhly";
        return jdbctemplate.queryForList(sql);
    }
             public List<Map<String , Object>> gettrangthai(){
        final String sql = "select pxtl_id, pxtl_trangthai from phieuthanhly";
        return jdbctemplate.queryForList(sql);
    }
                  public List<Map<String , Object>> getSophieu(){
        final String sql = "select pxtl_id, pxtl_so from phieuthanhly";
        return jdbctemplate.queryForList(sql);
    }
                       public List<Map<String , Object>> getNguoiduyet(){
        final String sql = "select nv_ma, nv_ten from nhanvien";
        return jdbctemplate.queryForList(sql);
    }
                         public List<Map<String , Object>> getNguoixuat(){
        final String sql = "select nv_ma, nv_ten from nhanvien";
        return jdbctemplate.queryForList(sql);
    }
}*/
                              
  /*  
    public boolean edit(Phieulinhmau plm){
        String sql = "update phieulinhmau set plm_id=?, plm_so=?, plm_noiyeucau=?, plm_ngaylap=?, plm_ngaynhan=?, plm_ghichu=?, plm_trangthai=?, dv_ma=?, nv_ma=? where plm_id=?";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(2, plm.getPlm_so());
            ps.setString(3, plm.getPlm_noiyeucau());
            ps.setDate(4, new Date(plm.getPlm_ngaylap().getTime()));
            ps.setDate(5, new Date(plm.getPlm_ngaynhan().getTime()));
            ps.setString(6, plm.getPlm_ghichu());
            ps.setString(7, plm.getPlm_trangthai());
            ps.setString(8, plm.getDv_ma());
            ps.setString(9, plm.getNv_ma());
            ps.setInt(1, plm.getPlm_id());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
        }
        return false;
    }
    
    public ArrayList<Phieulinhmau> getList(){
        ArrayList<Phieulinhmau> list = new ArrayList<>();
        String sql = "select * from phieulinhmau";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Phieulinhmau p = new Phieulinhmau();
                p.setPlm_id(rs.getInt("plm_id"));
                p.setPlm_so(rs.getInt("plm_so"));
                p.setPlm_noiyeucau(rs.getString("plm_noiyeucau"));
                p.setPlm_ngaylap(rs.getDate("plm_ngaylap"));
                p.setPlm_ngaynhan(rs.getDate("plm_ngaynhan"));
                p.setPlm_ghichu(rs.getString("plm_ghichu"));
                p.setPlm_trangthai(rs.getString("plm_trangthai"));
                p.setDv_ma(rs.getString("dv_ma"));
                p.setNv_ma(rs.getString("nv_ma"));
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public Phieulinhmau getPhieulinhmauById(int plm_so){
       String sql = "select * from phieulinhmau where plm_id=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, plm_so);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Phieulinhmau p = new Phieulinhmau();
                p.setPlm_id(rs.getInt("plm_id"));
                p.setPlm_so(rs.getInt("plm_so"));
                p.setPlm_noiyeucau(rs.getString("plm_noiyeucau"));
                p.setPlm_ngaylap(rs.getDate("plm_ngaylap"));
                p.setPlm_ngaynhan(rs.getDate("plm_ngaynhan"));
                p.setPlm_ghichu(rs.getString("plm_ghichu"));
                p.setPlm_trangthai(rs.getString("plm_trangthai"));
                p.setDv_ma(rs.getString("dv_ma"));
                p.setNv_ma(rs.getString("nv_ma"));
                return p;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    
}*/