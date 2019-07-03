package com.nganhangmau.controller;

import java.sql.Connection;
import java.util.Date;

public class Phieulinhmau {
    private Connection conn; 
    private String plm_noiyeucau, plm_ghichu, plm_trangthai, dv_ma, nv_ma, mau_ma;
    private Date plm_ngaylap, plm_ngaynhan;
    private int plm_luong, plm_dongia, plm_so, plm_id, so_nhap_kho;

    Phieulinhmau(int plm_id, int plm_so, int so_nhap_kho, String plm_trangthai, String plm_noiyeucau, String nv_ma_lap, String nv_ma_linh, Date plm_ngaylap, Date plm_ngaynhan, String plm_ghichu) {
       
        this.plm_id = plm_id;
        this.plm_so = plm_so;
        this.so_nhap_kho = so_nhap_kho;
        this.plm_trangthai = plm_trangthai;
        this.plm_noiyeucau = plm_noiyeucau;
        this.nv_ma = nv_ma_lap;
        this.nv_ma = nv_ma_linh;
        this.plm_ngaylap = plm_ngaylap;
        this.plm_ngaynhan = plm_ngaynhan;
        this.plm_ghichu = plm_ghichu;
    }

    Phieulinhmau(String plm_id, String plm_so, String so_nhap_kho, String plm_trangthai, String plm_noiyeucau, String nv_ma_lap, String nv_ma_linh, String plm_ngaylap, String plm_ngaynhan, String plm_ghichu) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    Phieulinhmau() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getPlm_id() {
        return plm_id;
    }

    public void setPlm_id(int plm_id) {
        this.plm_id = plm_id;
    }
    
    public int getPlm_so() {
        return plm_so;
    }

    public void setPlm_so(int plm_so) {
        this.plm_so = plm_so;
    }

    public String getPlm_noiyeucau() {
        return plm_noiyeucau;
    }

    public void setPlm_noiyeucau(String plm_noiyeucau) {
        this.plm_noiyeucau = plm_noiyeucau;
    }

    public String getPlm_ghichu() {
        return plm_ghichu;
    }

    public void setPlm_ghichu(String plm_ghichu) {
        this.plm_ghichu = plm_ghichu;
    }

    public String getPlm_trangthai() {
        return plm_trangthai;
    }

    public void setPlm_trangthai(String plm_trangthai) {
        this.plm_trangthai = plm_trangthai;
    }

    public String getDv_ma() {
        return dv_ma;
    }

    public void setDv_ma(String dv_ma) {
        this.dv_ma = dv_ma;
    }

    public String getNv_ma() {
        return nv_ma;
    }

    public void setNv_ma(String nv_ma) {
        this.nv_ma = nv_ma;
    }

    public String getMau_ma() {
        return mau_ma;
    }

    public void setMau_ma(String mau_ma) {
        this.mau_ma = mau_ma;
    }

    public Date getPlm_ngaylap() {
        return plm_ngaylap;
    }

    public void setPlm_ngaylap(Date plm_ngaylap) {
        this.plm_ngaylap = plm_ngaylap;
    }

    public Date getPlm_ngaynhan() {
        return plm_ngaynhan;
    }

    public void setPlm_ngaynhan(Date plm_ngaynhan) {
        this.plm_ngaynhan = plm_ngaynhan;
    }

    public int getPlm_luong() {
        return plm_luong;
    }

    public void setPlm_luong(int plm_luong) {
        this.plm_luong = plm_luong;
    }

    public int getPlm_dongia() {
        return plm_dongia;
    }

    public void setPlm_dongia(int plm_dongia) {
        this.plm_dongia = plm_dongia;
    }
}
