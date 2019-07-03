package com.nganhangmau.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class controller {
    @Autowired
    nganhangmaudao connectDB2Oracle;
    
    @RequestMapping("/")
    public String returnIndex(){
        return "index";
    }

   
    @RequestMapping("/lplm")
    public String returnLplm(ModelMap map) {
        List<Map<String, Object>> listNV = connectDB2Oracle.getNV();
        map.addAttribute("listNV", listNV);
        List<Map<String, Object>> listMAU = connectDB2Oracle.getMAU();
        map.addAttribute("listMAU", listMAU);
        List<Map<String, Object>> listPB = connectDB2Oracle.getPB();
        map.addAttribute("listPB", listPB);
        
        return "lplm";
    }
    
       @RequestMapping("/hoantratuimau")
        public String returnhoantratuimau(ModelMap map) {
        List<Map<String, Object>> listS_P = connectDB2Oracle.getMAU();
        map.addAttribute("listS_P", listS_P);
        List<Map<String, Object>> listNV = connectDB2Oracle.getNV();
        map.addAttribute("listNV", listNV);
        List<Map<String, Object>> listMAU = connectDB2Oracle.getMAU();
        map.addAttribute("listMAU", listMAU);
        List<Map<String, Object>> listPB = connectDB2Oracle.getPB();
        map.addAttribute("listPB", listPB);
        
        return "hoantratuimau";
    }
    
  

    @RequestMapping("/kholuutrumau")
    public String returnkholuutrumau() {
        return "kholuutrumau";
    }

    @RequestMapping("/kiemke")
    public String returnkiemke() {
        return "kiemke";
    }

    @RequestMapping("/xuatmautrongbenhvien")
    public String returnxuatmautrongbenhvien() {
        return "xuatmautrongbenhvien";
    }

    @RequestMapping("/xuatmaungoaibenhvien")
    public String returnxuatmaungoaibenhvien() {
        return "xuatmaungoaibenhvien";
    }

    @RequestMapping("/thanhlytuimau")
    public String return_thanhlytuimau(ModelMap map) {
        List<Map<String, Object>> listMM = connectDB2Oracle.getMaMau();
            map.addAttribute("listMM", listMM);
        List<Map<String, Object>> listTenM = connectDB2Oracle.getTenmau();
            map.addAttribute("listTenM", listTenM);
        List<Map<String, Object>> listTK =connectDB2Oracle.getTenKho();
            map.addAttribute("listTK", listTK);
   /*     List<Map<String, Object>> listN_M = connectDB2Oracle.getTenncc();
            map.addAttribute("listN_M", listN_M);
        List<Map<String, Object>> listLy_do =connectDB2Oracle.getLydotl();
            map.addAttribute("listLy_do", listLy_do);
        List<Map<String, Object>> listTrang_T = connectDB2Oracle.gettrangthai();
            map.addAttribute("listTrang_T", listTrang_T);   
        List<Map<String, Object>> listSo_P = connectDB2Oracle.getSophieu();
            map.addAttribute("listSo_P", listSo_P);   
        List<Map<String, Object>> listN_D = connectDB2Oracle.getNguoiduyet();
            map.addAttribute("listN_D", listN_D);       
        List<Map<String, Object>> listN_X =connectDB2Oracle.getNguoixuat();
            map.addAttribute("listN_X", listN_X);      */  
        return "thanhlytuimau";
    }

   
    @RequestMapping("/lapphieulinhmau")
    public String lapphieulinhmau() {
        
        return "lapphieulinhmau";
    }

    @RequestMapping("/biendongkho")
    public String returnbiendongkho() {
        return "biendongkho";
    }
}


